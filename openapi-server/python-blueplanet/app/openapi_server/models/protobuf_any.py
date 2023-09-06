# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model import Model
from openapi_server import util


class ProtobufAny(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, type: str=None):  # noqa: E501
        """ProtobufAny - a model defined in Swagger

        :param type: The type of this ProtobufAny.  # noqa: E501
        :type type: str
        """
        self.swagger_types = {
            'type': str
        }

        self.attribute_map = {
            'type': '@type'
        }

        self._type = type

    @classmethod
    def from_dict(cls, dikt) -> 'ProtobufAny':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The protobufAny of this ProtobufAny.  # noqa: E501
        :rtype: ProtobufAny
        """
        return util.deserialize_model(dikt, cls)

    @property
    def type(self) -> str:
        """Gets the type of this ProtobufAny.


        :return: The type of this ProtobufAny.
        :rtype: str
        """
        return self._type

    @type.setter
    def type(self, type: str):
        """Sets the type of this ProtobufAny.


        :param type: The type of this ProtobufAny.
        :type type: str
        """

        self._type = type
