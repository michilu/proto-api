from typing import List, Dict
from aiohttp import web

from openapi_server.models.v1_check_response import V1CheckResponse
from openapi_server import util


async def health_service_check(request: web.Request, service) -> web.Response:
    """health_service_check

    

    :param service: The service name to check the health of.
    :type service: str

    """
    return web.Response(status=200)
