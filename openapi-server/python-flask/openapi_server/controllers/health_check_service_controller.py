import connexion
import six
from typing import Dict
from typing import Tuple
from typing import Union

from openapi_server.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse  # noqa: E501
from openapi_server import util


def health_check():  # noqa: E501
    """health_check

     # noqa: E501


    :rtype: Union[V1HealthCheckServiceHealthCheckResponse, Tuple[V1HealthCheckServiceHealthCheckResponse, int], Tuple[V1HealthCheckServiceHealthCheckResponse, int, Dict[str, str]]
    """
    return 'do some magic!'
