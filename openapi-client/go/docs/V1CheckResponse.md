# V1CheckResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**V1ServingStatus**](V1ServingStatus.md) |  | [default to SERVING_STATUS_UNKNOWN_UNSPECIFIED]

## Methods

### NewV1CheckResponse

`func NewV1CheckResponse(status V1ServingStatus, ) *V1CheckResponse`

NewV1CheckResponse instantiates a new V1CheckResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewV1CheckResponseWithDefaults

`func NewV1CheckResponseWithDefaults() *V1CheckResponse`

NewV1CheckResponseWithDefaults instantiates a new V1CheckResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *V1CheckResponse) GetStatus() V1ServingStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *V1CheckResponse) GetStatusOk() (*V1ServingStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *V1CheckResponse) SetStatus(v V1ServingStatus)`

SetStatus sets Status field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


