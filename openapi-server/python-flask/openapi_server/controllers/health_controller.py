import connexion
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.rpc_status import RpcStatus  # noqa: E501
from openapi_server.models.stream_result_of_v1_health_check_response import StreamResultOfV1HealthCheckResponse  # noqa: E501
from openapi_server.models.v1_health_check_response import V1HealthCheckResponse  # noqa: E501
from openapi_server import util


def health_check(service=None):  # noqa: E501
    """health_check

     # noqa: E501

    :param service: 
    :type service: str

    :rtype: Union[V1HealthCheckResponse, Tuple[V1HealthCheckResponse, int], Tuple[V1HealthCheckResponse, int, Dict[str, str]]
    """
    return 'do some magic!'


def health_watch(service=None):  # noqa: E501
    """health_watch

     # noqa: E501

    :param service: 
    :type service: str

    :rtype: Union[StreamResultOfV1HealthCheckResponse, Tuple[StreamResultOfV1HealthCheckResponse, int], Tuple[StreamResultOfV1HealthCheckResponse, int, Dict[str, str]]
    """
    return 'do some magic!'
