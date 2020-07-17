# proto-api
An example of generating swagger via gRPC ecosystem.

# swagger
https://editor.swagger.io/?url=https://raw.githubusercontent.com/michilu/proto-api/master/apidocs.swagger.json

# refs
- [grpc-gateway/a_bit_of_everything.proto at master · grpc-ecosystem/grpc-gateway](https://github.com/grpc-ecosystem/grpc-gateway/blob/master/examples/proto/examplepb/a_bit_of_everything.proto)

# How to

## Adding dependencies
1. Import third-party libraries to proto file.
2. Get the third-party libraries to your workspace.
  - `go get ...`
  - curl or ...
3. Add paths of the third-party libraries to `-I` option of `protoc` command in `apidocs.swagger.json` target in Makefile.
  - ex) `-I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis`

# Dependencies

- [Buf: A new way of working with Protocol Buffers.](https://buf.build/docs/installation)
- [gRPC – Protocol Buffer Compiler Installation](https://grpc.io/docs/protoc-installation/) `$ brew install protobuf`
- [mikefarah/yq: yq is a portable command-line YAML processor](https://github.com/mikefarah/yq)
- [openapitools/openapi-generator-cli Tags - Docker Hub](https://hub.docker.com/r/openapitools/openapi-generator-cli/tags?ordering=name)
- [pypa/pipenv: Python Development Workflow for Humans.](https://github.com/pypa/pipenv) `$ brew install pipenv`
- [uber/prototool: Your Swiss Army Knife for Protocol Buffers](https://github.com/uber/prototool/)

# sync subtree

## for proto

Add upstream:
```console
$ git remote add googleapis https://github.com/googleapis/googleapis
$ git fetch --depth=1 --no-tags googleapis
$ git checkout googleapis/master
$ git subtree split --prefix=google -b google
```

Add subtree:
```console
$ git checkout dev
$ git subtree add --prefix=vendor/github.com/googleapis/googleapis/google google
```

Sync to upstream:
```console
$ git fetch --no-tags googleapis
(TBD)
$ git subtree pull --prefix=vendor/github.com/googleapis/googleapis/google origin google
```
