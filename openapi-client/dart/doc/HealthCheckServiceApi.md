# openapi.api.HealthCheckServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthCheck**](HealthCheckServiceApi.md#healthCheck) | **GET** /healthCheck | 


# **healthCheck**
> V1HealthCheckServiceHealthCheckResponse healthCheck()



### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = HealthCheckServiceApi();

try { 
    var result = api_instance.healthCheck();
    print(result);
} catch (e) {
    print("Exception when calling HealthCheckServiceApi->healthCheck: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1HealthCheckServiceHealthCheckResponse**](V1HealthCheckServiceHealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

