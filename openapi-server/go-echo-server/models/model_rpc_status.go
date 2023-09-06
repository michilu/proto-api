package models

type RpcStatus struct {
	Code int32 `json:"code,omitempty"`

	Message string `json:"message,omitempty"`

	Details []ProtobufAny `json:"details,omitempty"`
}
