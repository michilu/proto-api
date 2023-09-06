package models

type HealthCheckResponseServingStatus string

// List of HealthCheckResponseServingStatus
const (
	UNKNOWN         HealthCheckResponseServingStatus = "UNKNOWN"
	SERVING         HealthCheckResponseServingStatus = "SERVING"
	NOT_SERVING     HealthCheckResponseServingStatus = "NOT_SERVING"
	SERVICE_UNKNOWN HealthCheckResponseServingStatus = "SERVICE_UNKNOWN"
)
