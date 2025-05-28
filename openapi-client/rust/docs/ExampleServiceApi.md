# \ExampleServiceApi

All URIs are relative to *http://localhost:3100*

Method | HTTP request | Description
------------- | ------------- | -------------
[**example_service_query**](ExampleServiceApi.md#example_service_query) | **POST** /v1/example/{id} | 



## example_service_query

> models::V1ExampleServiceQueryResponse example_service_query(id, body)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | [required] |
**body** | **serde_json::Value** |  | [required] |

### Return type

[**models::V1ExampleServiceQueryResponse**](v1ExampleServiceQueryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

