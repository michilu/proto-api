# openapi.api.ExampleApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](ExampleApi.md#query) | **POST** /v1/example/{id} | 


# **query**
> ProtoResponse query(id, body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ExampleApi();
var id = id_example; // String | 
var body = ProtoRequest(); // ProtoRequest | 

try { 
    var result = api_instance.query(id, body);
    print(result);
} catch (e) {
    print("Exception when calling ExampleApi->query: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **body** | [**ProtoRequest**](ProtoRequest.md)|  | 

### Return type

[**ProtoResponse**](ProtoResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

