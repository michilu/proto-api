SHELL:=/usr/bin/env bash
OPENAPI_GENERATOR_CLI_VERSION?=v4.3.1
OPENAPI_CLIENT?=c dart go python ruby typescript-fetch
OPENAPI_SERVER?=python-aiohttp python-blueplanet python-flask ruby-on-rails

GO:=go
GOM:=GO111MODULE=on $(GO)
GOPATH:=$(shell $(GO) env GOPATH)

PROTO_DIR:=pb
PROTO:=$(shell find $(PROTO_DIR) -type d -name .git -prune -or -type d -name vendor -prune -or -type f -name "*.proto" -print)
PROTO_GO:=$(shell find $(PROTO_DIR) -type f -name "*.go" -print)
PB_GO:=$(PROTO:.proto=.pb.go)
PB_GO_VALIDATE:=$(PROTO:.proto=.pb.validate.go)
PB_GO_GQLGEN:=$(PROTO:.proto=.gqlgen.pb.go)
GOSRC:=$(PB_GO) $(PB_GO_VALIDATE) $(PB_GO_GQLGEN)
BUF_IMAGE:=buf-image.bin
GRAPH_DIR:=graph
GRAPHQLS:=$(patsubst $(PROTO_DIR)/%.proto,$(GRAPH_DIR)/%.pb.graphqls,$(PROTO))
GQLGEN:=$(patsubst $(PROTO_DIR)/%.proto,$(GRAPH_DIR)/%.gqlgen.pb.yml,$(PROTO))
GRAPH:=$(GRAPHQLS) $(GQLGEN) gqlgen.yml

.PHONY: all
all:\
 apidocs.swagger.yaml\
 $(GOSRC)\
 $(GRAPH)\
 grpc/python/.keep\
 $(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_CLIENT)))\
 $(addprefix openapi-server/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_SERVER)))\

.PHONY: clean
clean:
	find $(PROTO_DIR) -name "*.pb*.go" -delete
	rm -rf\
 graph\
 grpc/python\
 openapi-client\
 openapi-server\
 ;

$(BUF_IMAGE): vendor $(PROTO)
	buf check lint
	prototool format --overwrite $(PROTO_DIR)
	buf image build -o $@


.PHONY: vendor
vendor: go.mod $(PROTO_GO)
	$(GOM) mod $@
	git checkout $@

%.pb.go: %.proto
	( type protoc > /dev/null 2>&1 ) && protoc\
 --descriptor_set_in=$(BUF_IMAGE)\
 --go_out=.\
 $(patsubst $(PROTO_DIR)/%,%,$<)

%.pb.validate.go: %.proto
	( type protoc > /dev/null 2>&1 ) && protoc\
 --descriptor_set_in=$(BUF_IMAGE)\
 --validate_out="lang=go:."\
 $(patsubst $(PROTO_DIR)/%,%,$<)

%.gqlgen.pb.go: %.proto
	( type protoc > /dev/null 2>&1 ) && protoc\
 --descriptor_set_in=$(BUF_IMAGE)\
 --gogqlgen_out=gogoimport=false,paths=source_relative:$(PROTO_DIR)\
 $(patsubst $(PROTO_DIR)/%,%,$(PROTO))

$(GRAPH_DIR):
	mkdir -p $@

$(GRAPHQLS): $(GRAPH_DIR) $(BUF_IMAGE)
	( type protoc > /dev/null 2>&1 ) && protoc\
 --descriptor_set_in=$(BUF_IMAGE)\
 --gql_out=paths=source_relative:$(GRAPH_DIR)\
 $(patsubst $(PROTO_DIR)/%,%,$(PROTO))

$(GQLGEN): $(GRAPH_DIR) $(BUF_IMAGE)
	( type protoc > /dev/null 2>&1 ) && protoc\
 --descriptor_set_in=$(BUF_IMAGE)\
 --gqlgencfg_out=paths=source_relative:$(GRAPH_DIR)\
 $(patsubst $(PROTO_DIR)/%,%,$(PROTO))

gqlgen.yml: $(GQLGEN)
	[ -f $@ ] || echo 'schema:' > $@
	yq merge $(GQLGEN) $@ > $@.tmp
	mv $@.tmp $@

.venv:
	poetry install

grpc/python/.keep :.venv $(PROTO)
	target=$(shell dirname $@)\
 ;mkdir -p $${target}\
 ;poetry run python -m grpc_tools.protoc\
 -Ibuf-roots\
 -Ipb\
 --python_out=$${target}\
 --grpc_python_out=$${target}\
 $(PROTO)
	touch $@

apidocs.swagger.json: $(BUF_IMAGE)
	( type protoc > /dev/null 2>&1 ) && protoc\
 --descriptor_set_in=$<\
 --swagger_out=logtostderr=true,allow_merge=true:.\
 $(patsubst $(PROTO_DIR)/%,%,$(PROTO))

apidocs.swagger.yaml: apidocs.swagger.json
	yq r $< > $@

openapi-client/% :apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
openapi-server/% :apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
