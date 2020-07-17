# OpenapiClient::HealthCheckServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_check**](HealthCheckServiceApi.md#health_check) | **GET** /healthCheck | 



## health_check

> V1HealthCheckServiceHealthCheckResponse health_check



### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::HealthCheckServiceApi.new

begin
  result = api_instance.health_check
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling HealthCheckServiceApi->health_check: #{e}"
end
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

