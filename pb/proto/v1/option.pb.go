// Code generated by protoc-gen-go. DO NOT EDIT.
// source: proto/v1/option.proto

package v1

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
	// 421 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x8c, 0x52, 0xc1, 0x6a, 0x14, 0x41,
	0x10, 0x65, 0x37, 0x93, 0xb0, 0xb6, 0x8a, 0xa1, 0x45, 0x84, 0x45, 0xb1, 0x51, 0x41, 0x09, 0xce,
	0x74, 0x76, 0xf4, 0x10, 0xf6, 0xe4, 0x64, 0x89, 0x12, 0x22, 0x1a, 0xf4, 0x22, 0xb9, 0xf5, 0xf4,
	0x56, 0x66, 0x5a, 0x77, 0xba, 0x9a, 0xee, 0xda, 0x8d, 0xeb, 0xc5, 0x1f, 0xf0, 0xe4, 0xdd, 0x4f,
	0xf1, 0x0b, 0xbc, 0xfb, 0x2d, 0x1e, 0x65, 0x3a, 0xb3, 0x92, 0x45, 0x84, 0x5c, 0x66, 0xaa, 0xfa,
	0xbd, 0x7a, 0xf5, 0x1e, 0xdd, 0xec, 0x96, 0xf3, 0x48, 0x28, 0x17, 0x23, 0x89, 0x8e, 0x0c, 0xda,
	0x2c, 0xf6, 0x7c, 0x10, 0x7f, 0xd9, 0x62, 0x34, 0x7c, 0x12, 0x2b, 0x9d, 0x56, 0x60, 0xd3, 0x70,
	0xa6, 0xaa, 0x0a, 0x7c, 0x47, 0x0d, 0x52, 0x59, 0x8b, 0xa4, 0x62, 0x7d, 0x3e, 0xb7, 0xff, 0x3d,
	0xf9, 0x56, 0x7c, 0x4d, 0xf8, 0x8f, 0x1e, 0x7b, 0x56, 0x58, 0x01, 0x9f, 0x54, 0xe3, 0x66, 0x20,
	0xf0, 0x54, 0x54, 0x60, 0xc1, 0x2b, 0x32, 0xb6, 0x12, 0x9d, 0x8a, 0x58, 0x18, 0x25, 0xaa, 0xb7,
	0xc7, 0x13, 0x01, 0x1a, 0xc3, 0x32, 0x10, 0x34, 0xd9, 0xfd, 0x3d, 0xfe, 0xb0, 0x26, 0x72, 0x61,
	0x2c, 0x65, 0x65, 0xa8, 0x9e, 0x97, 0x99, 0xc6, 0x46, 0x36, 0x46, 0xd7, 0x66, 0x36, 0x97, 0x71,
	0x47, 0xaa, 0x9c, 0x19, 0x6e, 0x5b, 0xb4, 0xf0, 0xbc, 0xd3, 0x6f, 0x39, 0x3b, 0x2f, 0x18, 0x2b,
	0x9c, 0xd2, 0x35, 0xa4, 0x79, 0xb6, 0xcb, 0xf7, 0x2e, 0xa3, 0x22, 0xcb, 0x19, 0x96, 0xb2, 0x51,
	0x81, 0xc0, 0xcb, 0x57, 0x87, 0x93, 0x83, 0xd7, 0xef, 0x0e, 0xf2, 0x8d, 0x51, 0xb6, 0xbb, 0xd3,
	0xef, 0x27, 0xf9, 0xb6, 0x72, 0x6e, 0x66, 0x74, 0x8c, 0x27, 0x3f, 0x04, 0xb4, 0xe3, 0x7f, 0x4e,
	0x4e, 0x7e, 0xf7, 0xd8, 0xdd, 0x76, 0xaf, 0x39, 0x82, 0x65, 0x31, 0xa7, 0x9a, 0xdf, 0x18, 0xf4,
	0x87, 0x57, 0xde, 0xa7, 0xc5, 0xf1, 0x61, 0x7a, 0x04, 0x4b, 0xd1, 0x67, 0xbf, 0x7a, 0x6c, 0xeb,
	0x4d, 0x0b, 0xe5, 0xfc, 0x67, 0x6f, 0xb0, 0xf1, 0x38, 0xc9, 0x1f, 0xac, 0xac, 0x5d, 0x70, 0x2f,
	0x51, 0xcd, 0xa9, 0x96, 0xed, 0x07, 0xbd, 0xf9, 0x0c, 0xe3, 0x7b, 0xff, 0x27, 0x11, 0x7e, 0x04,
	0xbb, 0xff, 0x85, 0x0d, 0x59, 0xe2, 0x41, 0x4d, 0x39, 0x7f, 0xe9, 0x95, 0xa5, 0x20, 0xda, 0x46,
	0x28, 0xad, 0x21, 0x04, 0x76, 0x87, 0x6d, 0x9e, 0x79, 0x43, 0xc0, 0x6f, 0x76, 0x60, 0xec, 0x56,
	0xe8, 0x84, 0x6d, 0xaa, 0x69, 0x63, 0x2c, 0x1f, 0xaf, 0x8d, 0xda, 0xe9, 0x1a, 0x4d, 0x10, 0x8a,
	0x48, 0x33, 0x81, 0xda, 0x9b, 0x5b, 0x80, 0x30, 0xf6, 0x14, 0x7d, 0x13, 0xf3, 0x97, 0x8f, 0xd8,
	0xb5, 0x8b, 0xc9, 0xd9, 0xed, 0xbf, 0x39, 0xaf, 0x9f, 0x1b, 0xeb, 0x2c, 0x9c, 0x5c, 0x75, 0xa5,
	0x5c, 0x3d, 0xb2, 0x72, 0x2b, 0x56, 0x4f, 0xff, 0x04, 0x00, 0x00, 0xff, 0xff, 0x99, 0xdc, 0xc2,
	0xbc, 0x77, 0x02, 0x00, 0x00,
}
