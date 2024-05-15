# example_service_api

All URIs are relative to *http://localhost:3100*

Method | HTTP request | Description
------------- | ------------- | -------------
**ExampleService_Query**](example_service_api.md#ExampleService_Query) | **POST** /v1/example/{id} | 


# **ExampleService_Query**
> models::V1ExampleServiceQueryResponse ExampleService_Query(ctx, ctx, id, body)


### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **id** | [****](.md)|  | 
  **body** | [**object**](object.md)|  | 

### Return type

[**models::V1ExampleServiceQueryResponse**](v1ExampleServiceQueryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

