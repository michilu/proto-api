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

import (
	"context"
	"net/http"
)

// ExampleServiceAPIRouter defines the required methods for binding the api requests to a responses for the ExampleServiceAPI
// The ExampleServiceAPIRouter implementation should parse necessary information from the http request,
// pass the data to a ExampleServiceAPIServicer to perform the required actions, then write the service results to the http response.
type ExampleServiceAPIRouter interface {
	ExampleServiceQuery(http.ResponseWriter, *http.Request)
}

// HealthAPIRouter defines the required methods for binding the api requests to a responses for the HealthAPI
// The HealthAPIRouter implementation should parse necessary information from the http request,
// pass the data to a HealthAPIServicer to perform the required actions, then write the service results to the http response.
type HealthAPIRouter interface {
	HealthCheck(http.ResponseWriter, *http.Request)
	HealthWatch(http.ResponseWriter, *http.Request)
}

// ExampleServiceAPIServicer defines the api actions for the ExampleServiceAPI service
// This interface intended to stay up to date with the openapi yaml used to generate it,
// while the service implementation can be ignored with the .openapi-generator-ignore file
// and updated with the logic required for the API.
type ExampleServiceAPIServicer interface {
	ExampleServiceQuery(context.Context, string, map[string]interface{}) (ImplResponse, error)
}

// HealthAPIServicer defines the api actions for the HealthAPI service
// This interface intended to stay up to date with the openapi yaml used to generate it,
// while the service implementation can be ignored with the .openapi-generator-ignore file
// and updated with the logic required for the API.
type HealthAPIServicer interface {
	HealthCheck(context.Context, string) (ImplResponse, error)
	HealthWatch(context.Context, string) (ImplResponse, error)
}
