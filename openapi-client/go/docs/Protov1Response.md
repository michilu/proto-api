# Protov1Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | Pointer to [**RpcCode**](RpcCode.md) |  | [optional] [default to OK]
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewProtov1Response

`func NewProtov1Response() *Protov1Response`

NewProtov1Response instantiates a new Protov1Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProtov1ResponseWithDefaults

`func NewProtov1ResponseWithDefaults() *Protov1Response`

NewProtov1ResponseWithDefaults instantiates a new Protov1Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCode

`func (o *Protov1Response) GetCode() RpcCode`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *Protov1Response) GetCodeOk() (*RpcCode, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *Protov1Response) SetCode(v RpcCode)`

SetCode sets Code field to given value.

### HasCode

`func (o *Protov1Response) HasCode() bool`

HasCode returns a boolean if a field has been set.

### GetMessage

`func (o *Protov1Response) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *Protov1Response) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *Protov1Response) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *Protov1Response) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


