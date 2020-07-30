from typing import List, Dict
from aiohttp import web

from openapi_server.models.runtime_error import RuntimeError
from openapi_server.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse
from openapi_server import util


async def health_check_service_health_check(request: web.Request, ) -> web.Response:
    """health_check_service_health_check

    


    """
    return web.Response(status=200)
