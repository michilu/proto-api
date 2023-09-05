# Protov1Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | [**RpcCode**](RpcCode.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.protov1_response import Protov1Response

# TODO update the JSON string below
json = "{}"
# create an instance of Protov1Response from a JSON string
protov1_response_instance = Protov1Response.from_json(json)
# print the JSON string representation of the object
print Protov1Response.to_json()

# convert the object into a dict
protov1_response_dict = protov1_response_instance.to_dict()
# create an instance of Protov1Response from a dict
protov1_response_form_dict = protov1_response.from_dict(protov1_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


