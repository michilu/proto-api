SHELL:=/usr/bin/env bash

all: $(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,c dart go python ruby)) $(addprefix openapi-server/,$(addsuffix /.openapi-generator-ignore,python-aiohttp python-blueplanet python-flask)) grpc/python/.keep


GO:=go
GOPATH:=$(shell $(GO) env GOPATH)

PROTO_DIR:=proto
PROTO:=$(shell find $(PROTO_DIR) -type d -name .git -prune -or -type d -name vendor -prune -or -type f -name "*.proto" -print)

grpc/python/.keep :$(PROTO)
	mkdir -p $(shell dirname $@)
	pipenv run python -m grpc_tools.protoc \
  -I. \
  -I$(GOPATH)/src \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --python_out=$(shell dirname $@) --grpc_python_out=$(shell dirname $@) $(PROTO)
	touch $@

openapi-client/% :apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@
openapi-server/% :apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@

apidocs.swagger.json: $(PROTO)
	protoc -I/usr/local/include -I. \
  -I$(GOPATH)/src \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --swagger_out=logtostderr=true,allow_merge=true:. \
  $(PROTO)

apidocs.swagger.yaml: apidocs.swagger.json
	yq r $< > $@
