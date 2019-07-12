# OpenapiClient::HealthCheckApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get**](HealthCheckApi.md#get) | **GET** /healthcheck | 



## get

> GatewayHealthCheckResponse get



### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::HealthCheckApi.new

begin
  result = api_instance.get
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling HealthCheckApi->get: #{e}"
end
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

