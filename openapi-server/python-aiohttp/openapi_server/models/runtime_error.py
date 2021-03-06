# coding: utf-8

from datetime import date, datetime

from typing import List, Dict, Type

from openapi_server.models.base_model_ import Model
from openapi_server.models.protobuf_any import ProtobufAny
from openapi_server import util


class RuntimeError(Model):
    """NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

    Do not edit the class manually.
    """

    def __init__(self, error: str=None, code: int=None, message: str=None, details: List[ProtobufAny]=None):
        """RuntimeError - a model defined in OpenAPI

        :param error: The error of this RuntimeError.
        :param code: The code of this RuntimeError.
        :param message: The message of this RuntimeError.
        :param details: The details of this RuntimeError.
        """
        self.openapi_types = {
            'error': str,
            'code': int,
            'message': str,
            'details': List[ProtobufAny]
        }

        self.attribute_map = {
            'error': 'error',
            'code': 'code',
            'message': 'message',
            'details': 'details'
        }

        self._error = error
        self._code = code
        self._message = message
        self._details = details

    @classmethod
    def from_dict(cls, dikt: dict) -> 'RuntimeError':
        """Returns the dict as a model

        :param dikt: A dict.
        :return: The runtimeError of this RuntimeError.
        """
        return util.deserialize_model(dikt, cls)

    @property
    def error(self):
        """Gets the error of this RuntimeError.


        :return: The error of this RuntimeError.
        :rtype: str
        """
        return self._error

    @error.setter
    def error(self, error):
        """Sets the error of this RuntimeError.


        :param error: The error of this RuntimeError.
        :type error: str
        """

        self._error = error

    @property
    def code(self):
        """Gets the code of this RuntimeError.


        :return: The code of this RuntimeError.
        :rtype: int
        """
        return self._code

    @code.setter
    def code(self, code):
        """Sets the code of this RuntimeError.


        :param code: The code of this RuntimeError.
        :type code: int
        """

        self._code = code

    @property
    def message(self):
        """Gets the message of this RuntimeError.


        :return: The message of this RuntimeError.
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message):
        """Sets the message of this RuntimeError.


        :param message: The message of this RuntimeError.
        :type message: str
        """

        self._message = message

    @property
    def details(self):
        """Gets the details of this RuntimeError.


        :return: The details of this RuntimeError.
        :rtype: List[ProtobufAny]
        """
        return self._details

    @details.setter
    def details(self, details):
        """Sets the details of this RuntimeError.


        :param details: The details of this RuntimeError.
        :type details: List[ProtobufAny]
        """

        self._details = details
