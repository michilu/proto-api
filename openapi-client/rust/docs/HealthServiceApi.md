# \HealthServiceApi

All URIs are relative to *http://localhost:3100*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_service_check**](HealthServiceApi.md#health_service_check) | **GET** /v1/healthCheck | 



## health_service_check

> models::V1CheckResponse health_service_check(service)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**service** | **String** | The service name as specified. | [required] |

### Return type

[**models::V1CheckResponse**](v1CheckResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

