# RuntimeError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Error** | Pointer to **string** |  | [optional] 
**Code** | Pointer to **int32** |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 
**Details** | Pointer to [**[]ProtobufAny**](ProtobufAny.md) |  | [optional] 

## Methods

### NewRuntimeError

`func NewRuntimeError() *RuntimeError`

NewRuntimeError instantiates a new RuntimeError object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRuntimeErrorWithDefaults

`func NewRuntimeErrorWithDefaults() *RuntimeError`

NewRuntimeErrorWithDefaults instantiates a new RuntimeError object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetError

`func (o *RuntimeError) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *RuntimeError) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *RuntimeError) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *RuntimeError) HasError() bool`

HasError returns a boolean if a field has been set.

### GetCode

`func (o *RuntimeError) GetCode() int32`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *RuntimeError) GetCodeOk() (*int32, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *RuntimeError) SetCode(v int32)`

SetCode sets Code field to given value.

### HasCode

`func (o *RuntimeError) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetMessage

`func (o *RuntimeError) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *RuntimeError) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *RuntimeError) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *RuntimeError) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetDetails

`func (o *RuntimeError) GetDetails() []ProtobufAny`

GetDetails returns the Details field if non-nil, zero value otherwise.

### GetDetailsOk

`func (o *RuntimeError) GetDetailsOk() (*[]ProtobufAny, bool)`

GetDetailsOk returns a tuple with the Details field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetails

`func (o *RuntimeError) SetDetails(v []ProtobufAny)`

SetDetails sets Details field to given value.

### HasDetails

`func (o *RuntimeError) HasDetails() bool`

HasDetails returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


