# ExampleServiceAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExampleServiceAPI_query**](ExampleServiceAPI.md#ExampleServiceAPI_query) | **POST** /v1/example/{id} | 


# **ExampleServiceAPI_query**
```c
v1_example_service_query_response_t* ExampleServiceAPI_query(apiClient_t *apiClient, char * id, v1_example_service_query_request_t * body);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 
**body** | **[v1_example_service_query_request_t](v1_example_service_query_request.md) \*** |  | 

### Return type

[v1_example_service_query_response_t](v1_example_service_query_response.md) *


### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

