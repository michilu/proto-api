package models

type Protov1Response struct {
	Code RpcCode `json:"code,omitempty"`

	Message string `json:"message,omitempty"`
}
