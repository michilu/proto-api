import connexion
import six

from app.openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_server import util


def example_service_query(id, body):  # noqa: E501
    """example_service_query

     # noqa: E501

    :param id: 
    :type id: str
    :type id: str
    :param body: 
    :type body: 

    :rtype: V1ExampleServiceQueryResponse
    """
    return 'do some magic!'
