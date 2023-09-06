package models

type RpcStatus struct {
	Code int32 `json:"code,omitempty"`

	Details []ProtobufAny `json:"details,omitempty"`

	Message string `json:"message,omitempty"`
}
