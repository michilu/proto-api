# V1HealthCheckResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | Pointer to [**HealthCheckResponseServingStatus**](HealthCheckResponseServingStatus.md) |  | [optional] [default to UNKNOWN]

## Methods

### NewV1HealthCheckResponse

`func NewV1HealthCheckResponse() *V1HealthCheckResponse`

NewV1HealthCheckResponse instantiates a new V1HealthCheckResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1HealthCheckResponseWithDefaults

`func NewV1HealthCheckResponseWithDefaults() *V1HealthCheckResponse`

NewV1HealthCheckResponseWithDefaults instantiates a new V1HealthCheckResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *V1HealthCheckResponse) GetStatus() HealthCheckResponseServingStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *V1HealthCheckResponse) GetStatusOk() (*HealthCheckResponseServingStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *V1HealthCheckResponse) SetStatus(v HealthCheckResponseServingStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *V1HealthCheckResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


