# OpenapiClient::ExampleApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](ExampleApi.md#query) | **POST** /v1/example/{id} | 



## query

> ProtoResponse query(id, body)



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

api_instance = OpenapiClient::ExampleApi.new
id = 'id_example' # String | 
body = OpenapiClient::ProtoRequest.new # ProtoRequest | 

begin
  result = api_instance.query(id, body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ExampleApi->query: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**ProtoRequest**](ProtoRequest.md)|  | 

### Return type

[**ProtoResponse**](ProtoResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

