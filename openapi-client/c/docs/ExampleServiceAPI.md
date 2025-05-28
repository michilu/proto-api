# ExampleServiceAPI

All URIs are relative to *http://localhost:3100*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExampleServiceAPI_exampleServiceQuery**](ExampleServiceAPI.md#ExampleServiceAPI_exampleServiceQuery) | **POST** /v1/example/{id} | 


# **ExampleServiceAPI_exampleServiceQuery**
```c
v1_example_service_query_response_t* ExampleServiceAPI_exampleServiceQuery(apiClient_t *apiClient, char *id, object_t *body);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**id** | **char \*** |  | 
**body** | **[object_t](object.md) \*** |  | 

### Return type

[v1_example_service_query_response_t](v1_example_service_query_response.md) *


### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

