/*
 * An example of generating swagger via gRPC ecosystem.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.0
 * Contact: none@example.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type V1HealthCheckServiceHealthCheckResponse struct {
	Value Protov1Response `json:"value,omitempty"`
}

// AssertV1HealthCheckServiceHealthCheckResponseRequired checks if the required fields are not zero-ed
func AssertV1HealthCheckServiceHealthCheckResponseRequired(obj V1HealthCheckServiceHealthCheckResponse) error {
	if err := AssertProtov1ResponseRequired(obj.Value); err != nil {
		return err
	}
	return nil
}

// AssertV1HealthCheckServiceHealthCheckResponseConstraints checks if the values respects the defined constraints
func AssertV1HealthCheckServiceHealthCheckResponseConstraints(obj V1HealthCheckServiceHealthCheckResponse) error {
	return nil
}