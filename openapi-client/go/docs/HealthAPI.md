# \HealthAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HealthCheck**](HealthAPI.md#HealthCheck) | **Get** /healthCheck | 
[**HealthWatch**](HealthAPI.md#HealthWatch) | **Get** /healthWatch | 



## HealthCheck

> V1HealthCheckResponse HealthCheck(ctx).Service(service).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    service := "service_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.HealthAPI.HealthCheck(context.Background()).Service(service).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HealthAPI.HealthCheck``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `HealthCheck`: V1HealthCheckResponse
    fmt.Fprintf(os.Stdout, "Response from `HealthAPI.HealthCheck`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHealthCheckRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **string** |  | 

### Return type

[**V1HealthCheckResponse**](V1HealthCheckResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HealthWatch

> StreamResultOfV1HealthCheckResponse HealthWatch(ctx).Service(service).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    service := "service_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.HealthAPI.HealthWatch(context.Background()).Service(service).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HealthAPI.HealthWatch``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `HealthWatch`: StreamResultOfV1HealthCheckResponse
    fmt.Fprintf(os.Stdout, "Response from `HealthAPI.HealthWatch`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiHealthWatchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **string** |  | 

### Return type

[**StreamResultOfV1HealthCheckResponse**](StreamResultOfV1HealthCheckResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

