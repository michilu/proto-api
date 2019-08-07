import connexion
import six

from openapi_server.models.proto_request import ProtoRequest  # noqa: E501
from openapi_server.models.proto_response import ProtoResponse  # noqa: E501
from openapi_server import util


def query(id, body):  # noqa: E501
    """query

     # noqa: E501

    :param id: 
    :type id: str
    :param body: 
    :type body: dict | bytes

    :rtype: ProtoResponse
    """
    if connexion.request.is_json:
        body = ProtoRequest.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'
