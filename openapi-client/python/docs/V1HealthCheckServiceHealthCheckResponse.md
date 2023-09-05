# V1HealthCheckServiceHealthCheckResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | [**Protov1Response**](Protov1Response.md) |  | [optional] 

## Example

```python
from openapi_client.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse

# TODO update the JSON string below
json = "{}"
# create an instance of V1HealthCheckServiceHealthCheckResponse from a JSON string
v1_health_check_service_health_check_response_instance = V1HealthCheckServiceHealthCheckResponse.from_json(json)
# print the JSON string representation of the object
print V1HealthCheckServiceHealthCheckResponse.to_json()

# convert the object into a dict
v1_health_check_service_health_check_response_dict = v1_health_check_service_health_check_response_instance.to_dict()
# create an instance of V1HealthCheckServiceHealthCheckResponse from a dict
v1_health_check_service_health_check_response_form_dict = v1_health_check_service_health_check_response.from_dict(v1_health_check_service_health_check_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


