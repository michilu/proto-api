# openapi_client.HealthCheckServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_check_service_health_check**](HealthCheckServiceApi.md#health_check_service_health_check) | **GET** /healthCheck | 


# **health_check_service_health_check**
> V1HealthCheckServiceHealthCheckResponse health_check_service_health_check()



### Example

* Api Key Authentication (ApiKeyAuth):
```python
from __future__ import print_function
import time
import openapi_client
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

# Configure API key authorization: ApiKeyAuth
configuration = openapi_client.Configuration(
    host = "http://localhost",
    api_key = {
        'X-API-Key': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-API-Key'] = 'Bearer'

# Configure OAuth2 access token for authorization: OAuth2
configuration = openapi_client.Configuration(
    host = "http://localhost"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.HealthCheckServiceApi(api_client)
    
    try:
        api_response = api_instance.health_check_service_health_check()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling HealthCheckServiceApi->health_check_service_health_check: %s\n" % e)
```

* OAuth Authentication (OAuth2):
```python
from __future__ import print_function
import time
import openapi_client
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

# Configure API key authorization: ApiKeyAuth
configuration = openapi_client.Configuration(
    host = "http://localhost",
    api_key = {
        'X-API-Key': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['X-API-Key'] = 'Bearer'

# Configure OAuth2 access token for authorization: OAuth2
configuration = openapi_client.Configuration(
    host = "http://localhost"
)
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.HealthCheckServiceApi(api_client)
    
    try:
        api_response = api_instance.health_check_service_health_check()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling HealthCheckServiceApi->health_check_service_health_check: %s\n" % e)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A successful response. |  -  |
**0** | An unexpected error response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

