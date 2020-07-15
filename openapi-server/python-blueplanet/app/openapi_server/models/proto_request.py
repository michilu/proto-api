# coding: utf-8

from __future__ import absolute_import
from datetime import date, datetime  # noqa: F401

from typing import List, Dict  # noqa: F401

from app.openapi_server.models.base_model_ import Model
import re  # noqa: F401,E501
from openapi_server import util


class ProtoRequest(Model):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    def __init__(self, id: str=None):  # noqa: E501
        """ProtoRequest - a model defined in Swagger

        :param id: The id of this ProtoRequest.  # noqa: E501
        :type id: str
        """
        self.swagger_types = {
            'id': str
        }

        self.attribute_map = {
            'id': 'id'
        }

        self._id = id

    @classmethod
    def from_dict(cls, dikt) -> 'ProtoRequest':
        """Returns the dict as a model

        :param dikt: A dict.
        :type: dict
        :return: The protoRequest of this ProtoRequest.  # noqa: E501
        :rtype: ProtoRequest
        """
        return util.deserialize_model(dikt, cls)

    @property
    def id(self) -> str:
        """Gets the id of this ProtoRequest.


        :return: The id of this ProtoRequest.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id: str):
        """Sets the id of this ProtoRequest.


        :param id: The id of this ProtoRequest.
        :type id: str
        """
        if id is not None and len(id) < 1:
            raise ValueError("Invalid value for `id`, length must be greater than or equal to `1`")  # noqa: E501
        if id is not None and not re.search(r'[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}', id):  # noqa: E501
            raise ValueError("Invalid value for `id`, must be a follow pattern or equal to `/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}/`")  # noqa: E501

        self._id = id