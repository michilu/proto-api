SHELL:=/usr/bin/env bash
OPENAPI_GENERATOR_CLI_VERSION?=latest
OPENAPI_CLIENT?=\
 c\
 dart-dio\
 dart\
 go\
 python\
 typescript-angular\
 typescript-fetch\

OPENAPI_SERVER?=\
 go-echo-server\
 go-gin-server\
 go-server\
 python-aiohttp\
 python-blueplanet\
 python-flask\

GO:=go
GOM:=GO111MODULE=on $(GO)
GOPATH:=$(shell $(GO) env GOPATH)

PROTO_DIR:=pb
PROTO:=$(shell find $(PROTO_DIR) -type d -name .git -prune -or -type f -name "*.proto" -print)
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
 $(BUF_IMAGE)\
 $(GOSRC)\
 $(GRAPH)\
 grpc/python/.keep\
 $(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_CLIENT)))\
 $(addprefix openapi-server/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_SERVER)))\
 
	find . -name "*.go" -exec gofmt -w {} \;

.PHONY: clean
clean:
	find $(PROTO_DIR) -name "*.pb*.go" -delete
	find . -type f -name "*.swagger.*" -delete
	rm -rf\
 $(BUF_IMAGE)\
 gqlgen.yml\
 graph\
 grpc/python\
 openapi-client\
 openapi-server\
 ;

$(BUF_IMAGE): $(PROTO)
	buf lint
	buf format --write $(PROTO_DIR)
	buf build -o $@

%.pb.go: %.proto
	buf generate

%.pb.validate.go: %.proto
	buf generate

%.gqlgen.pb.go: %.proto $(BUF_IMAGE)
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
	yq eval-all '. as $$item ireduce ({}; . * $$item )' $(GQLGEN) $@ > $@.tmp
	yq --inplace --prettyPrint eval 'sort_keys(..)' $@.tmp
	mv $@.tmp $@

grpc/python/.keep: $(PROTO)
	target=$(shell dirname $@)\
 ;mkdir -p $${target}\
 ;buf generate
	touch $@

apidocs.swagger.json: $(BUF_IMAGE)
	buf generate

apidocs.swagger.yaml: apidocs.swagger.json
	yq --prettyPrint eval $< > $@

openapi-client/%: apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
openapi-server/%: apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
