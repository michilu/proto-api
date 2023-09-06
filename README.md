# proto-api
An example of generating gRPC, GraphQL, and OpenAPI via proto ecosystem.

# swagger
https://editor.swagger.io/?url=https://raw.githubusercontent.com/michilu/proto-api/master/apidocs.swagger.json

# refs
- [grpc-gateway/a_bit_of_everything.proto at master · grpc-ecosystem/grpc-gateway](https://github.com/grpc-ecosystem/grpc-gateway/blob/master/examples/internal/proto/examplepb/a_bit_of_everything.proto)

# Dependencies

## proto
- [Buf: A new way of working with Protocol Buffers.](https://buf.build/docs/installation) `$ brew install bufbuild/buf/buf`
- [protocolbuffers/protobuf-go: Go support for Google's protocol buffers](https://github.com/protocolbuffers/protobuf-go) `$ go install google.golang.org/protobuf/cmd/protoc-gen-go@latest`
- [envoyproxy/protoc-gen-validate: protoc plugin to generate polyglot message validators](https://github.com/envoyproxy/protoc-gen-validate) `$ go install github.com/envoyproxy/protoc-gen-validate@latest`

## gRPC
- [gRPC – Protocol Buffer Compiler Installation](https://grpc.io/docs/protoc-installation/) `$ brew install protobuf`

## GraphQL
- [danielvladco/go-proto-gql: Protoc plugins for generating graphql schema and quickly create servers](https://github.com/danielvladco/go-proto-gql/tree/v0.7.3)
  - `$ go install github.com/danielvladco/go-proto-gql/protoc-gen-gogqlgen@v0.7.3`
  - `$ go install github.com/danielvladco/go-proto-gql/protoc-gen-gql@v0.7.3`
  - `$ go install github.com/danielvladco/go-proto-gql/protoc-gen-gqlgencfg@v0.7.3`
  
## OpenAPI
- [grpc-ecosystem/grpc-gateway/protoc-gen-swagger at v1.7.0](https://github.com/grpc-ecosystem/grpc-gateway/tree/v1.7.0) `$ go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger@v1.7.0`
- [openapitools/openapi-generator-cli Tags - Docker Hub](https://hub.docker.com/r/openapitools/openapi-generator-cli/tags?ordering=name)
- [jqlang/jq: Command-line JSON processor](https://github.com/jqlang/jq) `$ brew install jq`
- [mikefarah/yq: yq is a portable command-line YAML processor](https://github.com/mikefarah/yq)

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
