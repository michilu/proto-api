# \ExampleServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Query**](ExampleServiceApi.md#Query) | **Post** /v1/example/{id} | 



## Query

> V1ExampleServiceQueryResponse Query(ctx, id, body)



### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string**|  | 
**body** | [**V1ExampleServiceQueryRequest**](V1ExampleServiceQueryRequest.md)|  | 

### Return type

[**V1ExampleServiceQueryResponse**](v1ExampleServiceQueryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

