# openapi.api.HealthCheckServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthCheckServiceHealthCheck**](HealthCheckServiceApi.md#healthCheckServiceHealthCheck) | **GET** /healthCheck | 


# **healthCheckServiceHealthCheck**
> V1HealthCheckServiceHealthCheckResponse healthCheckServiceHealthCheck()



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';
// TODO Configure OAuth2 access token for authorization: OAuth2
//defaultApiClient.getAuthentication<OAuth>('OAuth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = HealthCheckServiceApi();

try { 
    var result = api_instance.healthCheckServiceHealthCheck();
    print(result);
} catch (e) {
    print("Exception when calling HealthCheckServiceApi->healthCheckServiceHealthCheck: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1HealthCheckServiceHealthCheckResponse**](V1HealthCheckServiceHealthCheckResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

