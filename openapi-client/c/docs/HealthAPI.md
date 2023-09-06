# HealthAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**HealthAPI_healthCheck**](HealthAPI.md#HealthAPI_healthCheck) | **GET** /healthCheck | 
[**HealthAPI_healthWatch**](HealthAPI.md#HealthAPI_healthWatch) | **GET** /healthWatch | 


# **HealthAPI_healthCheck**
```c
v1_health_check_response_t* HealthAPI_healthCheck(apiClient_t *apiClient, char * service);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**service** | **char \*** |  | [optional] 

### Return type

[v1_health_check_response_t](v1_health_check_response.md) *


### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **HealthAPI_healthWatch**
```c
stream_result_of_v1_health_check_response_t* HealthAPI_healthWatch(apiClient_t *apiClient, char * service);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**service** | **char \*** |  | [optional] 

### Return type

[stream_result_of_v1_health_check_response_t](stream_result_of_v1_health_check_response.md) *


### Authorization

[OAuth2](../README.md#OAuth2), [ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

