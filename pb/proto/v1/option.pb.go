// Code generated by protoc-gen-go. DO NOT EDIT.
// source: proto/v1/option.proto

package proto_v1

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	_ "github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger/options"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

func init() { proto.RegisterFile("proto/v1/option.proto", fileDescriptor_8b641fb960a541be) }

var fileDescriptor_8b641fb960a541be = []byte{
	// 398 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x8c, 0x51, 0xcd, 0x6e, 0xd4, 0x30,
	0x10, 0xd6, 0xfe, 0xb4, 0x5a, 0x7c, 0xa1, 0x32, 0xe2, 0xb2, 0x02, 0x61, 0x01, 0x07, 0x54, 0x91,
	0xb8, 0x1b, 0x38, 0x54, 0x39, 0x91, 0xae, 0x0a, 0xaa, 0x8a, 0xa0, 0x82, 0x0b, 0xe2, 0xe6, 0x78,
	0xa7, 0x89, 0x21, 0xf1, 0x58, 0xf6, 0x24, 0x65, 0xb9, 0xf0, 0x0e, 0xbc, 0x0f, 0x4f, 0xc0, 0x9d,
	0x17, 0xe0, 0xc0, 0x2b, 0x70, 0x44, 0x31, 0xa9, 0x44, 0x85, 0x90, 0xb8, 0xd8, 0xf3, 0xf9, 0xfb,
	0xe6, 0x9b, 0x19, 0x0f, 0xbb, 0xe9, 0x3c, 0x12, 0xca, 0x7e, 0x25, 0xd1, 0x91, 0x41, 0x9b, 0x46,
	0xcc, 0x17, 0xf1, 0x4a, 0xfb, 0xd5, 0xf2, 0x61, 0x8c, 0x74, 0x52, 0x81, 0x4d, 0xc2, 0x85, 0xaa,
	0x2a, 0xf0, 0xa3, 0x34, 0x48, 0x65, 0x2d, 0x92, 0x8a, 0xf1, 0xef, 0xbc, 0xa3, 0x1f, 0xb3, 0xcf,
	0xc5, 0xf7, 0x19, 0xff, 0x32, 0x61, 0x8f, 0x0b, 0x2b, 0xe0, 0x83, 0x6a, 0x5d, 0x03, 0x02, 0xcf,
	0x45, 0x05, 0x16, 0xbc, 0x22, 0x63, 0x2b, 0x31, 0xba, 0x88, 0xde, 0x28, 0x51, 0xbd, 0x3a, 0x5b,
	0x0b, 0xd0, 0x18, 0xb6, 0x81, 0xa0, 0x4d, 0xef, 0x1e, 0xf2, 0xfb, 0x35, 0x91, 0x0b, 0xb9, 0x94,
	0x95, 0xa1, 0xba, 0x2b, 0x53, 0x8d, 0xad, 0x6c, 0x8d, 0xae, 0x4d, 0xd3, 0xc9, 0x58, 0x23, 0x51,
	0xce, 0x2c, 0xf7, 0x2c, 0x5a, 0x78, 0x32, 0xfa, 0x0f, 0x9a, 0xfd, 0xa7, 0x8c, 0x15, 0x4e, 0xe9,
	0x1a, 0x92, 0x2c, 0x3d, 0xe0, 0x87, 0xff, 0xe3, 0x22, 0xcb, 0x06, 0x4b, 0xd9, 0xaa, 0x40, 0xe0,
	0xe5, 0xf3, 0x93, 0xf5, 0xf1, 0x8b, 0xd7, 0xc7, 0xd9, 0x6c, 0x95, 0x1e, 0xec, 0x4f, 0xa7, 0xf3,
	0x6c, 0x4f, 0x39, 0xd7, 0x18, 0x1d, 0xc7, 0x93, 0xef, 0x02, 0xda, 0xfc, 0xaf, 0x97, 0xb7, 0x3f,
	0x27, 0xec, 0xf6, 0x50, 0xd7, 0x9c, 0xc2, 0xb6, 0xe8, 0xa8, 0xe6, 0xd7, 0x17, 0xd3, 0xe5, 0xb5,
	0x37, 0x49, 0x71, 0x76, 0x92, 0x9c, 0xc2, 0x56, 0x4c, 0xd9, 0xb7, 0x09, 0xdb, 0x7d, 0x39, 0x50,
	0x19, 0xff, 0x3a, 0x59, 0xcc, 0x1e, 0xcc, 0xb3, 0x7b, 0x97, 0xad, 0xfd, 0xd1, 0xbd, 0x44, 0xd5,
	0x51, 0x2d, 0x87, 0x03, 0xbd, 0xf9, 0x08, 0xf9, 0x9d, 0x7f, 0x8b, 0x08, 0xdf, 0x83, 0x3d, 0xfa,
	0xc4, 0x96, 0x6c, 0xee, 0x41, 0x6d, 0x38, 0x7f, 0xe6, 0x95, 0xa5, 0x20, 0x06, 0x20, 0x94, 0xd6,
	0x10, 0x02, 0xbb, 0xc5, 0x76, 0x2e, 0xbc, 0x21, 0xe0, 0x37, 0x46, 0x32, 0xa2, 0x4b, 0x76, 0xcd,
	0x76, 0xd4, 0xa6, 0x35, 0x96, 0xe7, 0x57, 0x52, 0xed, 0xe6, 0x8a, 0x4c, 0x10, 0x8a, 0x28, 0x33,
	0x81, 0x86, 0xcd, 0xf5, 0x20, 0x8c, 0x3d, 0x47, 0xdf, 0xc6, 0xf9, 0xcb, 0xdd, 0xf8, 0x8d, 0x8f,
	0x7e, 0x05, 0x00, 0x00, 0xff, 0xff, 0x3a, 0xc0, 0x16, 0x4b, 0x41, 0x02, 0x00, 0x00,
}
