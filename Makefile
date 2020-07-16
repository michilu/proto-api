SHELL:=/usr/bin/env bash
OPENAPI_GENERATOR_CLI_VERSION?=v4.3.1
OPENAPI_CLIENT?=c dart go python ruby typescript-fetch
OPENAPI_SERVER?=python-aiohttp python-blueplanet python-flask ruby-on-rails

all: apidocs.swagger.yaml $(PB_GO) grpc/python/.keep $(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_CLIENT))) $(addprefix openapi-server/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_SERVER)))


GO:=go
GOM:=GO111MODULE=on $(GO)
GOPATH:=$(shell $(GO) env GOPATH)

PROTO_DIR:=pb
PROTO:=$(shell find $(PROTO_DIR) -type d -name .git -prune -or -type d -name vendor -prune -or -type f -name "*.proto" -print)
PROTO_GO:=$(shell find $(PROTO_DIR) -type f -name "*.go" -print)
PB_GO:=$(PROTO:.proto=.pb.go)
VALIDATOR_PB_GO:=$(PROTO:.proto=.validator.pb.go)
GOSRC:=$(PB_GO) $(VALIDATOR_PB_GO)
BUF_IMAGE:=buf-image.bin

vendor: go.mod $(PROTO_GO)
	$(GOM) mod vendor

%.pb.go: %.proto
	buf image build -o - | protoc --descriptor_set_in=/dev/stdin --go_out=$(PROTO_DIR) $(buf image build -o - | buf ls-files --input -)

build:
	buf image build -o - | protoc --descriptor_set_in=/dev/stdin --go_out=$(PROTO_DIR) $(buf image build -o - | buf ls-files --input -)

.venv:
	pipenv install --dev

grpc/python/.keep :.venv $(PROTO)
	mkdir -p $(shell dirname $@)
	pipenv run python -m grpc_tools.protoc \
  -I. \
  -I$(GOPATH)/src \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --python_out=$(shell dirname $@) --grpc_python_out=$(shell dirname $@) $(PROTO)
	touch $@

$(BUF_IMAGE): $(PROTO) vendor
	buf image build -o $@

apidocs.swagger.json: $(BUF_IMAGE)
	buf check lint
	prototool format --overwrite $(PROTO_DIR)
	protoc\
  --descriptor_set_in=$<\
  --swagger_out=logtostderr=true,allow_merge=true:.\
  $(patsubst $(PROTO_DIR)/%,%,$(PROTO))

apidocs.swagger.yaml: apidocs.swagger.json
	yq r $< > $@

openapi-client/% :apidocs.swagger.json
	rm -rf $(dir $@)
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
openapi-server/% :apidocs.swagger.json
	rm -rf $(dir $@)
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
