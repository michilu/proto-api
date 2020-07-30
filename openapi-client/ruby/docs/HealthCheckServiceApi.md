# OpenapiClient::HealthCheckServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_check_service_health_check**](HealthCheckServiceApi.md#health_check_service_health_check) | **GET** /healthCheck | 



## health_check_service_health_check

> V1HealthCheckServiceHealthCheckResponse health_check_service_health_check



### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::HealthCheckServiceApi.new

begin
  result = api_instance.health_check_service_health_check
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling HealthCheckServiceApi->health_check_service_health_check: #{e}"
end
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

