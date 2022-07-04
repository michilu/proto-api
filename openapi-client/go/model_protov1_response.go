/*
An example of generating swagger via gRPC ecosystem.

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

API version: 1.0
Contact: none@example.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// Protov1Response struct for Protov1Response
type Protov1Response struct {
	Code *RpcCode `json:"code,omitempty"`
	Message *string `json:"message,omitempty"`
}

// NewProtov1Response instantiates a new Protov1Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewProtov1Response() *Protov1Response {
	this := Protov1Response{}
	var code RpcCode = OK
	this.Code = &code
	return &this
}

// NewProtov1ResponseWithDefaults instantiates a new Protov1Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewProtov1ResponseWithDefaults() *Protov1Response {
	this := Protov1Response{}
	var code RpcCode = OK
	this.Code = &code
	return &this
}

// GetCode returns the Code field value if set, zero value otherwise.
func (o *Protov1Response) GetCode() RpcCode {
	if o == nil || o.Code == nil {
		var ret RpcCode
		return ret
	}
	return *o.Code
}

// GetCodeOk returns a tuple with the Code field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Protov1Response) GetCodeOk() (*RpcCode, bool) {
	if o == nil || o.Code == nil {
		return nil, false
	}
	return o.Code, true
}

// HasCode returns a boolean if a field has been set.
func (o *Protov1Response) HasCode() bool {
	if o != nil && o.Code != nil {
		return true
	}

	return false
}

// SetCode gets a reference to the given RpcCode and assigns it to the Code field.
func (o *Protov1Response) SetCode(v RpcCode) {
	o.Code = &v
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *Protov1Response) GetMessage() string {
	if o == nil || o.Message == nil {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Protov1Response) GetMessageOk() (*string, bool) {
	if o == nil || o.Message == nil {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *Protov1Response) HasMessage() bool {
	if o != nil && o.Message != nil {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *Protov1Response) SetMessage(v string) {
	o.Message = &v
}

func (o Protov1Response) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Code != nil {
		toSerialize["code"] = o.Code
	}
	if o.Message != nil {
		toSerialize["message"] = o.Message
	}
	return json.Marshal(toSerialize)
}

type NullableProtov1Response struct {
	value *Protov1Response
	isSet bool
}

func (v NullableProtov1Response) Get() *Protov1Response {
	return v.value
}

func (v *NullableProtov1Response) Set(val *Protov1Response) {
	v.value = val
	v.isSet = true
}

func (v NullableProtov1Response) IsSet() bool {
	return v.isSet
}

func (v *NullableProtov1Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableProtov1Response(val *Protov1Response) *NullableProtov1Response {
	return &NullableProtov1Response{value: val, isSet: true}
}

func (v NullableProtov1Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableProtov1Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


