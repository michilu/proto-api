/*
An example of generating swagger via gRPC ecosystem.

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

API version: 1.0
Contact: none@example.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"fmt"
)

// HealthCheckResponseServingStatus the model 'HealthCheckResponseServingStatus'
type HealthCheckResponseServingStatus string

// List of HealthCheckResponseServingStatus
const (
	UNKNOWN         HealthCheckResponseServingStatus = "UNKNOWN"
	SERVING         HealthCheckResponseServingStatus = "SERVING"
	NOT_SERVING     HealthCheckResponseServingStatus = "NOT_SERVING"
	SERVICE_UNKNOWN HealthCheckResponseServingStatus = "SERVICE_UNKNOWN"
)

// All allowed values of HealthCheckResponseServingStatus enum
var AllowedHealthCheckResponseServingStatusEnumValues = []HealthCheckResponseServingStatus{
	"UNKNOWN",
	"SERVING",
	"NOT_SERVING",
	"SERVICE_UNKNOWN",
}

func (v *HealthCheckResponseServingStatus) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := HealthCheckResponseServingStatus(value)
	for _, existing := range AllowedHealthCheckResponseServingStatusEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid HealthCheckResponseServingStatus", value)
}

// NewHealthCheckResponseServingStatusFromValue returns a pointer to a valid HealthCheckResponseServingStatus
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewHealthCheckResponseServingStatusFromValue(v string) (*HealthCheckResponseServingStatus, error) {
	ev := HealthCheckResponseServingStatus(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for HealthCheckResponseServingStatus: valid values are %v", v, AllowedHealthCheckResponseServingStatusEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v HealthCheckResponseServingStatus) IsValid() bool {
	for _, existing := range AllowedHealthCheckResponseServingStatusEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to HealthCheckResponseServingStatus value
func (v HealthCheckResponseServingStatus) Ptr() *HealthCheckResponseServingStatus {
	return &v
}

type NullableHealthCheckResponseServingStatus struct {
	value *HealthCheckResponseServingStatus
	isSet bool
}

func (v NullableHealthCheckResponseServingStatus) Get() *HealthCheckResponseServingStatus {
	return v.value
}

func (v *NullableHealthCheckResponseServingStatus) Set(val *HealthCheckResponseServingStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableHealthCheckResponseServingStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableHealthCheckResponseServingStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableHealthCheckResponseServingStatus(val *HealthCheckResponseServingStatus) *NullableHealthCheckResponseServingStatus {
	return &NullableHealthCheckResponseServingStatus{value: val, isSet: true}
}

func (v NullableHealthCheckResponseServingStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableHealthCheckResponseServingStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
