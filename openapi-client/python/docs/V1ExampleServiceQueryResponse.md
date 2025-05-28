# V1ExampleServiceQueryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**Protov1Status**](Protov1Status.md) |  | [optional] 

## Example

```python
from openapi_client.models.v1_example_service_query_response import V1ExampleServiceQueryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of V1ExampleServiceQueryResponse from a JSON string
v1_example_service_query_response_instance = V1ExampleServiceQueryResponse.from_json(json)
# print the JSON string representation of the object
print(V1ExampleServiceQueryResponse.to_json())

# convert the object into a dict
v1_example_service_query_response_dict = v1_example_service_query_response_instance.to_dict()
# create an instance of V1ExampleServiceQueryResponse from a dict
v1_example_service_query_response_from_dict = V1ExampleServiceQueryResponse.from_dict(v1_example_service_query_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


