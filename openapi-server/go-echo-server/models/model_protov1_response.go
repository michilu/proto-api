package models

type Protov1Response struct {
	Code RpcCode `json:"code,omitempty"`

	Details []string `json:"details,omitempty"`

	Message string `json:"message,omitempty"`
}
