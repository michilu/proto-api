# StreamResultOfV1HealthCheckResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**result** | [**V1HealthCheckResponse**](V1HealthCheckResponse.md) |  | [optional] 
**error** | [**RpcStatus**](RpcStatus.md) |  | [optional] 

## Example

```python
from openapi_client.models.stream_result_of_v1_health_check_response import StreamResultOfV1HealthCheckResponse

# TODO update the JSON string below
json = "{}"
# create an instance of StreamResultOfV1HealthCheckResponse from a JSON string
stream_result_of_v1_health_check_response_instance = StreamResultOfV1HealthCheckResponse.from_json(json)
# print the JSON string representation of the object
print StreamResultOfV1HealthCheckResponse.to_json()

# convert the object into a dict
stream_result_of_v1_health_check_response_dict = stream_result_of_v1_health_check_response_instance.to_dict()
# create an instance of StreamResultOfV1HealthCheckResponse from a dict
stream_result_of_v1_health_check_response_form_dict = stream_result_of_v1_health_check_response.from_dict(stream_result_of_v1_health_check_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


