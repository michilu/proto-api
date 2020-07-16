# proto-openapi
An example of generating swagger via gRPC ecosystem.

# swagger
https://editor.swagger.io/?url=https://raw.githubusercontent.com/michilu/proto-openapi/master/apidocs.swagger.json

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

- [mikefarah/yq: yq is a portable command-line YAML processor](https://github.com/mikefarah/yq)
- [openapitools/openapi-generator-cli Tags - Docker Hub](https://hub.docker.com/r/openapitools/openapi-generator-cli/tags?ordering=name)
- [pypa/pipenv: Python Development Workflow for Humans.](https://github.com/pypa/pipenv) `$ brew install pipenv`
- [uber/prototool: Your Swiss Army Knife for Protocol Buffers](https://github.com/uber/prototool/)
