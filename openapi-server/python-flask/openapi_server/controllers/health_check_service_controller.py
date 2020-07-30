import connexion
import six

from openapi_server.models.runtime_error import RuntimeError  # noqa: E501
from openapi_server.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse  # noqa: E501
from openapi_server import util


def health_check_service_health_check():  # noqa: E501
    """health_check_service_health_check

     # noqa: E501


    :rtype: V1HealthCheckServiceHealthCheckResponse
    """
    return 'do some magic!'
