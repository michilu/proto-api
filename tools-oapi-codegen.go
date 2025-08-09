// https://github.com/oapi-codegen/oapi-codegen

//go:build tools
// +build tools

package tools

import (
	_ "github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen"
)

//go:generate go tool oapi-codegen -generate types    -o oapi-codegen/types_gen.go    -package openapi api/openapi.yaml
//go:generate go tool oapi-codegen -generate client   -o oapi-codegen/client_gen.go   -package openapi api/openapi.yaml
//go:generate go tool oapi-codegen -generate server   -o oapi-codegen/server_gen.go   -package openapi api/openapi.yaml
//go:generate go tool oapi-codegen -generate spec     -o oapi-codegen/spec_gen.go 	  -package openapi api/openapi.yaml
//go:generate go tool oapi-codegen -generate std-http -o oapi-codegen/std-http_gen.go -package openapi api/openapi.yaml
//go:generate go tool oapi-codegen -generate gin      -o oapi-codegen/gin_gen.go  	  -package openapi api/openapi.yaml
