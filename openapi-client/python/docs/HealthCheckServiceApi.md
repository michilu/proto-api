# openapi_client.HealthCheckServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_check**](HealthCheckServiceApi.md#health_check) | **GET** /healthCheck | 


# **health_check**
> V1HealthCheckServiceHealthCheckResponse health_check()



### Example

* OAuth Authentication (OAuth2):
* Api Key Authentication (ApiKeyAuth):
```python
import time
import os
import openapi_client
from openapi_client.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

configuration.access_token = os.environ["ACCESS_TOKEN"]

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.HealthCheckServiceApi(api_client)

    try:
        api_response = api_instance.health_check()
        print("The response of HealthCheckServiceApi->health_check:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HealthCheckServiceApi->health_check: %s\n" % e)
```



### Parameters
This endpoint does not need any parameter.

### Return type

[**V1HealthCheckServiceHealthCheckResponse**](V1HealthCheckServiceHealthCheckResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A successful response. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

