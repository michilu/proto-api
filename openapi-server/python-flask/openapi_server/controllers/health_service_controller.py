import connexion
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.rpc_status import RpcStatus  # noqa: E501
from openapi_server.models.v1_check_response import V1CheckResponse  # noqa: E501
from openapi_server import util


def health_service_check(service=None):  # noqa: E501
    """health_service_check

     # noqa: E501

    :param service: 
    :type service: str

    :rtype: Union[V1CheckResponse, Tuple[V1CheckResponse, int], Tuple[V1CheckResponse, int, Dict[str, str]]
    """
    return 'do some magic!'
