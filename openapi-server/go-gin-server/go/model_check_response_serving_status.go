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

type CheckResponseServingStatus string

// List of CheckResponseServingStatus
const (
	UNKNOWN_UNSPECIFIED CheckResponseServingStatus = "SERVING_STATUS_UNKNOWN_UNSPECIFIED"
	SERVING             CheckResponseServingStatus = "SERVING_STATUS_SERVING"
	NOT_SERVING         CheckResponseServingStatus = "SERVING_STATUS_NOT_SERVING"
)
