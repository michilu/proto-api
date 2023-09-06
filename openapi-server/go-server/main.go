/*
 * An example of generating swagger via gRPC ecosystem.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.0
 * Contact: none@example.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package main

import (
	"log"
	"net/http"

	openapi "github.com/GIT_USER_ID/GIT_REPO_ID/go"
)

func main() {
	log.Printf("Server started")

	ExampleServiceAPIService := openapi.NewExampleServiceAPIService()
	ExampleServiceAPIController := openapi.NewExampleServiceAPIController(ExampleServiceAPIService)

	HealthServiceAPIService := openapi.NewHealthServiceAPIService()
	HealthServiceAPIController := openapi.NewHealthServiceAPIController(HealthServiceAPIService)

	router := openapi.NewRouter(ExampleServiceAPIController, HealthServiceAPIController)

	log.Fatal(http.ListenAndServe(":8080", router))
}
