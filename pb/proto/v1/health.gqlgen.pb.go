// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: proto/v1/health.proto

package v1

import (
	context "context"
	fmt "fmt"
	_ "github.com/envoyproxy/protoc-gen-validate/validate"
	proto "github.com/golang/protobuf/proto"
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2/options"
	_ "google.golang.org/genproto/googleapis/api/annotations"
	io "io"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

type HealthServiceGQLServer struct{ Service HealthServiceServer }

func (s *HealthServiceGQLServer) HealthServiceCheck(ctx context.Context, in *CheckRequest) (*CheckResponse, error) {
	return s.Service.Check(ctx, in)
}

func (c *CheckResponse_ServingStatus) UnmarshalGQL(v interface{}) error {
	code, ok := v.(string)
	if ok {
		*c = CheckResponse_ServingStatus(CheckResponse_ServingStatus_value[code])
		return nil
	}
	return fmt.Errorf("cannot unmarshal CheckResponse_ServingStatus enum")
}

func (c CheckResponse_ServingStatus) MarshalGQL(w io.Writer) {
	fmt.Fprintf(w, "%q", c.String())
}
