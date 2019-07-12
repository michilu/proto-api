SHELL:=/usr/bin/env bash

ALL:=$(addprefix openapi-client/,$(addsuffix /.openapi-generator-ignore,c dart go python ruby))
all: $(ALL)

GO:=go
GOPATH:=$(shell $(GO) env GOPATH)

PROTO:=$(shell find . -type d -name .git -prune -or -type d -name vendor -prune -or -type f -name "*.proto" -print)

openapi-client/% :apidocs.swagger.json
	docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate -i /local/$< -g $(shell basename $$(dirname $@)) -o /local/$(shell dirname $@)
	touch $@

apidocs.swagger.json: $(PROTO)
	protoc -I/usr/local/include -I. \
  -I$(GOPATH)/src \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --swagger_out=logtostderr=true,allow_merge=true:. \
  $<
