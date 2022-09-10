import connexion
import six
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.v1_example_service_query_request import V1ExampleServiceQueryRequest  # noqa: E501
from openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_server import util


def query(id, body):  # noqa: E501
    """query

     # noqa: E501

    :param id: 
    :type id: str
    :param body: 
    :type body: dict | bytes

    :rtype: Union[V1ExampleServiceQueryResponse, Tuple[V1ExampleServiceQueryResponse, int], Tuple[V1ExampleServiceQueryResponse, int, Dict[str, str]]
    """
    if connexion.request.is_json:
        body = V1ExampleServiceQueryRequest.from_dict(connexion.request.get_json())  # noqa: E501
    return 'do some magic!'
