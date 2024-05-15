# coding: utf-8

"""
    An example of generating swagger via gRPC ecosystem.

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0
    Contact: none@example.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import List, Optional
from pydantic import BaseModel, Field, StrictInt, StrictStr, conlist
from openapi_client.models.rpc_code import RpcCode

class Protov1Status(BaseModel):
    """
    Protov1Status
    """
    type: Optional[StrictStr] = Field(None, description="The \"type\" member is a JSON string containing a URI reference [URI] that identifies the problem/response type. Consumers MUST use the \"type\" URI (after resolution, if necessary) as the problem/response type's primary identifier. When this member is not present, its value is assumed to be \"about:blank\".")
    status: Optional[StrictInt] = Field(None, description="The \"status\" member is a JSON number indicating the HTTP status code ([HTTP], Section 15) generated by the origin server for this occurrence of the problem/response. The HTTP status code that corresponds to `google.rpc.Status.code`.")
    title: Optional[StrictStr] = Field(None, description="The \"title\" member is a JSON string containing a short, human-readable summary of the problem/response type.")
    detail: Optional[StrictStr] = Field(None, description="The \"detail\" member is a JSON string containing a human-readable explanation specific to this occurrence of the problem/response. The \"detail\" string, if present, ought to focus on helping the client correct the problem/response, rather than giving debugging information.")
    instance: Optional[StrictStr] = Field(None, description="The \"instance\" member is a JSON string containing a URI reference that identifies the specific occurrence of the problem/response.")
    extensions: Optional[conlist(StrictStr)] = Field(None, description="Problem type definitions MAY extend the problem details object with additional members that are specific to that problem type.")
    code: Optional[RpcCode] = None
    __properties = ["type", "status", "title", "detail", "instance", "extensions", "code"]

    class Config:
        """Pydantic configuration"""
        allow_population_by_field_name = True
        validate_assignment = True

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.dict(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Protov1Status:
        """Create an instance of Protov1Status from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> Protov1Status:
        """Create an instance of Protov1Status from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return Protov1Status.parse_obj(obj)

        _obj = Protov1Status.parse_obj({
            "type": obj.get("type"),
            "status": obj.get("status"),
            "title": obj.get("title"),
            "detail": obj.get("detail"),
            "instance": obj.get("instance"),
            "extensions": obj.get("extensions"),
            "code": obj.get("code")
        })
        return _obj

