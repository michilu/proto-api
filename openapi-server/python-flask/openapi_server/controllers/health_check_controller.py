import connexion
import six

from openapi_server.models.proto_response import ProtoResponse  # noqa: E501
from openapi_server import util


def health_check():  # noqa: E501
    """health_check

     # noqa: E501


    :rtype: ProtoResponse
    """
    return 'do some magic!'
