from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from openapi_server.models.base_model import Model
from openapi_server.models.protobuf_any import ProtobufAny
from openapi_server import util

from openapi_server.models.protobuf_any import ProtobufAny  # noqa: E501

class RpcStatus(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, code=None, message=None, details=None):  # noqa: E501
        """RpcStatus - a model defined in OpenAPI

        :param code: The code of this RpcStatus.  # noqa: E501
        :type code: int
        :param message: The message of this RpcStatus.  # noqa: E501
        :type message: str
        :param details: The details of this RpcStatus.  # noqa: E501
        :type details: List[ProtobufAny]
        """
        self.openapi_types = {
            'code': int,
            'message': str,
            'details': List[ProtobufAny]
        }

        self.attribute_map = {
            'code': 'code',
            'message': 'message',
            'details': 'details'
        }

        self._code = code
        self._message = message
        self._details = details

    @classmethod
    def from_dict(cls, dikt) -> 'RpcStatus':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The rpcStatus of this RpcStatus.  # noqa: E501
        :rtype: RpcStatus
        """
        return util.deserialize_model(dikt, cls)

    @property
    def code(self) -> int:
        """Gets the code of this RpcStatus.


        :return: The code of this RpcStatus.
        :rtype: int
        """
        return self._code

    @code.setter
    def code(self, code: int):
        """Sets the code of this RpcStatus.


        :param code: The code of this RpcStatus.
        :type code: int
        """

        self._code = code

    @property
    def message(self) -> str:
        """Gets the message of this RpcStatus.


        :return: The message of this RpcStatus.
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message: str):
        """Sets the message of this RpcStatus.


        :param message: The message of this RpcStatus.
        :type message: str
        """

        self._message = message

    @property
    def details(self) -> List[ProtobufAny]:
        """Gets the details of this RpcStatus.


        :return: The details of this RpcStatus.
        :rtype: List[ProtobufAny]
        """
        return self._details

    @details.setter
    def details(self, details: List[ProtobufAny]):
        """Sets the details of this RpcStatus.


        :param details: The details of this RpcStatus.
        :type details: List[ProtobufAny]
        """

        self._details = details
