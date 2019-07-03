SHELL:=/usr/bin/env bash

GO:=go
GOPATH:=$(shell $(GO) env GOPATH)

PROTO:=$(shell find . -type d -name .git -prune -or -type d -name vendor -prune -or -type f -name "*.proto" -print)

swagger.yaml: $(PROTO)
	protoc -I/usr/local/include -I. \
  -I$(GOPATH)/src \
  -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
  --swagger_out=logtostderr=true,allow_merge=true:. \
  $<
