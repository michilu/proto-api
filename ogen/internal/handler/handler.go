package handler

import (
	"context"

	"github.com/go-faster/sdk/zctx"
	"go.uber.org/zap"

	"ogen/oas"
)

// Compile-time check for Handler.
var _ oas.Handler = (*Handler)(nil)

type Handler struct {
	oas.UnimplementedHandler // automatically implement all methods
}

func (h Handler) HealthServiceCheck(ctx context.Context, params oas.HealthServiceCheckParams) (*oas.V1CheckResponse, error) {
	zctx.From(ctx).Info("HealthServiceCheck", zap.Any("params", params))
	return &oas.V1CheckResponse{
		Status: oas.V1ServingStatusSERVINGSTATUSSERVING,
	}, nil
}

func (h Handler) ExampleServiceGet(ctx context.Context, req *oas.ExampleServiceQueryBody, params oas.ExampleServiceQueryParams) (*oas.V1ExampleServiceQueryResponse, error) {
	zctx.From(ctx).Info("ExampleServiceGet", zap.Any("req", req), zap.Any("params", params))
	return &oas.V1ExampleServiceQueryResponse{
		Status: oas.OptProtov1Status{
			Value: oas.Protov1Status{},
			Set:   true,
		},
	}, nil
}
