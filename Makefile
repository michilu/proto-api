SHELL:=/usr/bin/env bash
OPENAPI_GENERATOR_CLI_VERSION?=v4.3.1
OPENAPI_CLIENT?=c dart go python ruby
OPENAPI_SERVER?=python-aiohttp python-blueplanet python-flask

all: apidocs.swagger.yaml grpc/python/.keep $(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_CLIENT))) $(addprefix openapi-server/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_SERVER)))


GO:=go
GOM:=GO111MODULE=on $(GO)
GOPATH:=$(shell $(GO) env GOPATH)

PROTO_DIR:=proto
PROTO:=$(shell find $(PROTO_DIR) -type d -name .git -prune -or -type d -name vendor -prune -or -type f -name "*.proto" -print)
PROTO_GO:=$(shell find $(PROTO_DIR) -type f -name "*.go" -print)

vendor: go.mod $(PROTO_GO)
	$(GOM) mod vendor

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

openapi-client/% :apidocs.swagger.json
	rm -rf $(dir $@)
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
openapi-server/% :apidocs.swagger.json
	rm -rf $(dir $@)
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@

apidocs.swagger.json: $(PROTO) vendor
	-prototool format $(PROTO_DIR)
	protoc -I/usr/local/include -I. \
  -Ivendor \
  -I$(GOPATH)/src \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --swagger_out=logtostderr=true,allow_merge=true:. \
  $(PROTO)

apidocs.swagger.yaml: apidocs.swagger.json
	yq r $< > $@
