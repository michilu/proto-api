# openapi.api.ExampleServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exampleServiceQuery**](ExampleServiceApi.md#exampleServiceQuery) | **POST** /v1/example/{id} | 


# **exampleServiceQuery**
> V1ExampleServiceQueryResponse exampleServiceQuery(id, body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ExampleServiceApi();
var id = id_example; // String | 
var body = V1ExampleServiceQueryRequest(); // V1ExampleServiceQueryRequest | 

try { 
    var result = api_instance.exampleServiceQuery(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ExampleServiceApi->exampleServiceQuery: $e\n");
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

