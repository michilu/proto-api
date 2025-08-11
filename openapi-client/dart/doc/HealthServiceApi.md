# openapi.api.HealthServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3100*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthServiceCheck**](HealthServiceApi.md#healthservicecheck) | **GET** /v1/healthCheck | 


# **healthServiceCheck**
> V1CheckResponse healthServiceCheck(servingName)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = HealthServiceApi();
final servingName = servingName_example; // String | The serving name as specified.

try {
    final result = api_instance.healthServiceCheck(servingName);
    print(result);
} catch (e) {
    print('Exception when calling HealthServiceApi->healthServiceCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servingName** | **String**| The serving name as specified. | 

### Return type

[**V1CheckResponse**](V1CheckResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

