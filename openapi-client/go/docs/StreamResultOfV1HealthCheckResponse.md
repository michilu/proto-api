# StreamResultOfV1HealthCheckResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Result** | Pointer to [**V1HealthCheckResponse**](V1HealthCheckResponse.md) |  | [optional] 
**Error** | Pointer to [**RpcStatus**](RpcStatus.md) |  | [optional] 

## Methods

### NewStreamResultOfV1HealthCheckResponse

`func NewStreamResultOfV1HealthCheckResponse() *StreamResultOfV1HealthCheckResponse`

NewStreamResultOfV1HealthCheckResponse instantiates a new StreamResultOfV1HealthCheckResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStreamResultOfV1HealthCheckResponseWithDefaults

`func NewStreamResultOfV1HealthCheckResponseWithDefaults() *StreamResultOfV1HealthCheckResponse`

NewStreamResultOfV1HealthCheckResponseWithDefaults instantiates a new StreamResultOfV1HealthCheckResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResult

`func (o *StreamResultOfV1HealthCheckResponse) GetResult() V1HealthCheckResponse`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *StreamResultOfV1HealthCheckResponse) GetResultOk() (*V1HealthCheckResponse, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *StreamResultOfV1HealthCheckResponse) SetResult(v V1HealthCheckResponse)`

SetResult sets Result field to given value.

### HasResult

`func (o *StreamResultOfV1HealthCheckResponse) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetError

`func (o *StreamResultOfV1HealthCheckResponse) GetError() RpcStatus`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *StreamResultOfV1HealthCheckResponse) GetErrorOk() (*RpcStatus, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *StreamResultOfV1HealthCheckResponse) SetError(v RpcStatus)`

SetError sets Error field to given value.

### HasError

`func (o *StreamResultOfV1HealthCheckResponse) HasError() bool`

HasError returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


