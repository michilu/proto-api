# openapi.api.HealthCheckApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](HealthCheckApi.md#callGet) | **GET** /healthcheck | 


# **callGet**
> GatewayHealthCheckResponse callGet()



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new HealthCheckApi();

try { 
    var result = api_instance.callGet();
    print(result);
} catch (e) {
    print("Exception when calling HealthCheckApi->callGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GatewayHealthCheckResponse**](GatewayHealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

