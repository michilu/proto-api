import connexion
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_server import util


def example_service_query(id, body):  # noqa: E501
    """example_service_query

     # noqa: E501

    :param id: 
    :type id: str
    :type id: str
    :param body: 
    :type body: 

    :rtype: Union[V1ExampleServiceQueryResponse, Tuple[V1ExampleServiceQueryResponse, int], Tuple[V1ExampleServiceQueryResponse, int, Dict[str, str]]
    """
    return 'do some magic!'
