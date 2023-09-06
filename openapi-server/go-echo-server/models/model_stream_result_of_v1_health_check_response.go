package models

type StreamResultOfV1HealthCheckResponse struct {
	Result V1HealthCheckResponse `json:"result,omitempty"`

	Error RpcStatus `json:"error,omitempty"`
}
