//go:build tools
// +build tools

package ogen

import (
	_ "github.com/ogen-go/ogen/cmd/ogen"
	_ "golang.org/x/tools/cmd/godoc"
)
