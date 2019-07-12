# openapi_client.HealthCheckApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthCheckApi.md#get) | **GET** /healthcheck | 


# **get**
> GatewayHealthCheckResponse get()



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Create an instance of the API class
api_instance = openapi_client.HealthCheckApi()

try:
    api_response = api_instance.get()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling HealthCheckApi->get: %s\n" % e)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A successful response. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

