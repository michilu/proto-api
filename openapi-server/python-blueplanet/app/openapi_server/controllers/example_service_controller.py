import connexion
import six

from app.openapi_server.models.runtime_error import RuntimeError  # noqa: E501
from app.openapi_server.models.v1_example_service_query_request import V1ExampleServiceQueryRequest  # noqa: E501
from app.openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_server import util


def example_service_query(id, body):  # noqa: E501
    """example_service_query

     # noqa: E501

    :param id: 
    :type id: str
    :param body: 
    :type body: dict | bytes

    :rtype: V1ExampleServiceQueryResponse
    """
    if connexion.request.is_json:
        body = V1ExampleServiceQueryRequest.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'
