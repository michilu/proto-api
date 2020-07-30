# \ExampleServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExampleServiceQuery**](ExampleServiceApi.md#ExampleServiceQuery) | **Post** /v1/example/{id} | 



## ExampleServiceQuery

> V1ExampleServiceQueryResponse ExampleServiceQuery(ctx, id, body)



### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string**|  | 
**body** | [**V1ExampleServiceQueryRequest**](V1ExampleServiceQueryRequest.md)|  | 

### Return type

[**V1ExampleServiceQueryResponse**](v1ExampleServiceQueryResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

