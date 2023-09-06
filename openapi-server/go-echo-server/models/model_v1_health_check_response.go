package models

type V1HealthCheckResponse struct {
	Status HealthCheckResponseServingStatus `json:"status,omitempty"`
}
