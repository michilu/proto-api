import connexion
import six

from app.openapi_server.models.rpc_status import RpcStatus  # noqa: E501
from app.openapi_server.models.stream_result_of_v1_health_check_response import StreamResultOfV1HealthCheckResponse  # noqa: E501
from app.openapi_server.models.v1_health_check_response import V1HealthCheckResponse  # noqa: E501
from openapi_server import util


def health_check(service=None):  # noqa: E501
    """health_check

     # noqa: E501

    :param service: 
    :type service: str

    :rtype: V1HealthCheckResponse
    """
    return 'do some magic!'


def health_watch(service=None):  # noqa: E501
    """health_watch

     # noqa: E501

    :param service: 
    :type service: str

    :rtype: StreamResultOfV1HealthCheckResponse
    """
    return 'do some magic!'
