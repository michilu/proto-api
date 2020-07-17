# OpenapiClient::ExampleServiceApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**query**](ExampleServiceApi.md#query) | **POST** /v1/example/{id} | 



## query

> V1ExampleServiceQueryResponse query(id, body)



### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::ExampleServiceApi.new
id = 'id_example' # String | 
body = OpenapiClient::V1ExampleServiceQueryRequest.new # V1ExampleServiceQueryRequest | 

begin
  result = api_instance.query(id, body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ExampleServiceApi->query: #{e}"
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

