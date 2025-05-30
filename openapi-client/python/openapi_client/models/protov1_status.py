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

from pydantic import BaseModel, ConfigDict, Field, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from openapi_client.models.rpc_code import RpcCode
from typing import Optional, Set
from typing_extensions import Self

class Protov1Status(BaseModel):
    """
    Protov1Status
    """ # noqa: E501
    type: Optional[StrictStr] = Field(default=None, description="The \"type\" member is a JSON string containing a URI reference [URI] that identifies the problem/response type. Consumers MUST use the \"type\" URI (after resolution, if necessary) as the problem/response type's primary identifier. When this member is not present, its value is assumed to be \"about:blank\".")
    status: Optional[StrictInt] = Field(default=None, description="The \"status\" member is a JSON number indicating the HTTP status code ([HTTP], Section 15) generated by the origin server for this occurrence of the problem/response. The HTTP status code that corresponds to `google.rpc.Status.code`.")
    title: Optional[StrictStr] = Field(default=None, description="The \"title\" member is a JSON string containing a short, human-readable summary of the problem/response type.")
    detail: Optional[StrictStr] = Field(default=None, description="The \"detail\" member is a JSON string containing a human-readable explanation specific to this occurrence of the problem/response. The \"detail\" string, if present, ought to focus on helping the client correct the problem/response, rather than giving debugging information.")
    instance: Optional[StrictStr] = Field(default=None, description="The \"instance\" member is a JSON string containing a URI reference that identifies the specific occurrence of the problem/response.")
    extensions: Optional[List[StrictStr]] = Field(default=None, description="Problem type definitions MAY extend the problem details object with additional members that are specific to that problem type.")
    code: Optional[RpcCode] = RpcCode.OK
    __properties: ClassVar[List[str]] = ["type", "status", "title", "detail", "instance", "extensions", "code"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of Protov1Status from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Protov1Status from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "type": obj.get("type"),
            "status": obj.get("status"),
            "title": obj.get("title"),
            "detail": obj.get("detail"),
            "instance": obj.get("instance"),
            "extensions": obj.get("extensions"),
            "code": obj.get("code") if obj.get("code") is not None else RpcCode.OK
        })
        return _obj


