SHELL:=/usr/bin/env bash
OPENAPI_GENERATOR_CLI_VERSION?=latest
OPENAPI_CLIENT?=\
 c\
 dart-dio\
 dart\
 go\
 python\
 rust\
 typescript-angular\
 typescript-fetch\

OPENAPI_SERVER?=\
 go-server\
 go-gin-server\
 python-aiohttp\
 rust-server\

KEEP?=\
 $(shell find . -type f -name .keep -print)\

PROTO_DIR:=api
PROTO:=$(shell find $(PROTO_DIR) -type d -name .git -prune -or -type f -name "*.proto" -print)
GEN_GO:=$(shell find . -type f -name "*_gen.go" -print)
SRC_GO=$(shell find . -type f -name "*.go" -print)
BUF_IMAGE:=buf-image.bin
GRAPH_DIR:=graph
GRAPHQLS:=$(patsubst $(PROTO_DIR)/%.proto,$(GRAPH_DIR)/%.pb.graphqls,$(PROTO))
GQLGEN:=$(patsubst $(PROTO_DIR)/%.proto,$(GRAPH_DIR)/%.gqlgen.pb.yml,$(PROTO))
GRAPH:=$(GRAPHQLS) $(GQLGEN) gqlgen.yml

.PHONY: all
all:\
 $(PROTO_DIR)/apidocs.swagger.yaml\
 $(BUF_IMAGE)\
 $(GRAPH)\
 $(KEEP)\
 $(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_CLIENT)))\
 $(addprefix openapi-server/,$(addsuffix /.openapi-generator-ignore,$(OPENAPI_SERVER)))\
 fmt\
 
	find . -name "*.go" -exec gofmt -w {} \;

.PHONY: clean
clean:
	find $(PROTO_DIR) -depth 1 -type f -name "*.swagger.*" -delete
	find $(PROTO_DIR) -depth 1 -type f -name "openapi.*" -delete
	rm -rf\
 $(BUF_IMAGE)\
 gqlgen.yml\
 graph\
 grpc/python\
 $(GEN_GO)\
 openapi-client\
 openapi-server\
 ;

.PHONY: fmt
fmt: $(shell find . -name "*.yaml" -print)
	yamlfmt -dstar "**/*.yaml"

$(BUF_IMAGE): $(wildcard */buf.lock) $(PROTO)
	buf lint
	buf format --write $(PROTO_DIR)
	buf build -o $@

%.pb.go: %.proto
	buf generate

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

ogen/oas/.keep: $(PROTO_DIR)/openapi.yaml
	( cd ogen && go generate ./... )
	touch $@

ogen/.keep: $(GEN_GO) $(SRC_GO) ogen/oas/.keep ogen/Dockerfile
	docker build --tag "$(shell dirname $@)" $(dir $@)
	touch $@

$(PROTO_DIR)/apidocs.swagger.json: $(BUF_IMAGE)
	buf generate

$(PROTO_DIR)/openapi.json: $(PROTO_DIR)/apidocs.swagger.json
	npx swagger2openapi --outfile $@ $<

$(PROTO_DIR)/apidocs.swagger.yaml: $(PROTO_DIR)/apidocs.swagger.json
	yq --output-format=yaml --prettyPrint eval $< > $@
	touch $@

$(PROTO_DIR)/openapi.yaml: $(PROTO_DIR)/openapi.json
	yq --output-format=yaml --prettyPrint eval $< > $@
	touch $@

openapi-client/%/.openapi-generator-ignore: $(PROTO_DIR)/openapi.yaml
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate --input-spec /local/$< --generator-name $(word 2,$(subst /, ,$@)) --output /local/$(shell dirname $@)
	touch $@
openapi-server/%/.openapi-generator-ignore: $(PROTO_DIR)/openapi.yaml
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:$(OPENAPI_GENERATOR_CLI_VERSION) generate --input-spec /local/$< --generator-name $(word 2,$(subst /, ,$@)) --output /local/$(shell dirname $@)
	touch $@
