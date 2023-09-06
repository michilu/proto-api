# HealthServiceAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HealthServiceAPI_healthServiceCheck**](HealthServiceAPI.md#HealthServiceAPI_healthServiceCheck) | **GET** /healthCheck | 


# **HealthServiceAPI_healthServiceCheck**
```c
v1_check_response_t* HealthServiceAPI_healthServiceCheck(apiClient_t *apiClient, char * service);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**service** | **char \*** |  | [optional] 

### Return type

[v1_check_response_t](v1_check_response.md) *


### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

