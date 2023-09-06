import connexion
import six

from app.openapi_server.models.rpc_status import RpcStatus  # noqa: E501
from app.openapi_server.models.v1_check_response import V1CheckResponse  # noqa: E501
from openapi_server import util


def health_service_check(service=None):  # noqa: E501
    """health_service_check

     # noqa: E501

    :param service: 
    :type service: str

    :rtype: V1CheckResponse
    """
    return 'do some magic!'
