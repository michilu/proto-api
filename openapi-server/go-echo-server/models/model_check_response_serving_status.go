package models

type CheckResponseServingStatus string

// List of CheckResponseServingStatus
const (
	UNKNOWN_UNSPECIFIED CheckResponseServingStatus = "SERVING_STATUS_UNKNOWN_UNSPECIFIED"
	SERVING             CheckResponseServingStatus = "SERVING_STATUS_SERVING"
	NOT_SERVING         CheckResponseServingStatus = "SERVING_STATUS_NOT_SERVING"
)
