# OpenapiClient::ExampleServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**example_service_query**](ExampleServiceApi.md#example_service_query) | **POST** /v1/example/{id} | 



## example_service_query

> V1ExampleServiceQueryResponse example_service_query(id, body)



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

api_instance = OpenapiClient::ExampleServiceApi.new
id = 'id_example' # String | 
body = OpenapiClient::V1ExampleServiceQueryRequest.new # V1ExampleServiceQueryRequest | 

begin
  result = api_instance.example_service_query(id, body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ExampleServiceApi->example_service_query: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**V1ExampleServiceQueryRequest**](V1ExampleServiceQueryRequest.md)|  | 

### Return type

[**V1ExampleServiceQueryResponse**](V1ExampleServiceQueryResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

