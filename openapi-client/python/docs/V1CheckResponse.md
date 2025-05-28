# V1CheckResponse

The response message containing the health status of the service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**V1ServingStatus**](V1ServingStatus.md) |  | [default to V1ServingStatus.SERVING_STATUS_UNKNOWN_UNSPECIFIED]

## Example

```python
from openapi_client.models.v1_check_response import V1CheckResponse

# TODO update the JSON string below
json = "{}"
# create an instance of V1CheckResponse from a JSON string
v1_check_response_instance = V1CheckResponse.from_json(json)
# print the JSON string representation of the object
print(V1CheckResponse.to_json())

# convert the object into a dict
v1_check_response_dict = v1_check_response_instance.to_dict()
# create an instance of V1CheckResponse from a dict
v1_check_response_from_dict = V1CheckResponse.from_dict(v1_check_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


