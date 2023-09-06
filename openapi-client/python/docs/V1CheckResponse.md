# V1CheckResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**CheckResponseServingStatus**](CheckResponseServingStatus.md) |  | [optional] 

## Example

```python
from openapi_client.models.v1_check_response import V1CheckResponse

# TODO update the JSON string below
json = "{}"
# create an instance of V1CheckResponse from a JSON string
v1_check_response_instance = V1CheckResponse.from_json(json)
# print the JSON string representation of the object
print V1CheckResponse.to_json()

# convert the object into a dict
v1_check_response_dict = v1_check_response_instance.to_dict()
# create an instance of V1CheckResponse from a dict
v1_check_response_form_dict = v1_check_response.from_dict(v1_check_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


