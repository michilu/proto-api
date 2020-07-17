# openapi.api.ExampleServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](ExampleServiceApi.md#query) | **POST** /v1/example/{id} | 


# **query**
> V1ExampleServiceQueryResponse query(id, body)



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = ExampleServiceApi();
var id = id_example; // String | 
var body = V1ExampleServiceQueryRequest(); // V1ExampleServiceQueryRequest | 

try { 
    var result = api_instance.query(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ExampleServiceApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **body** | [**V1ExampleServiceQueryRequest**](V1ExampleServiceQueryRequest.md)|  | 

### Return type

[**V1ExampleServiceQueryResponse**](V1ExampleServiceQueryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

