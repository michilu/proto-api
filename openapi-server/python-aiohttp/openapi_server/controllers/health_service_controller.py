from typing import List, Dict
from aiohttp import web

from openapi_server.models.v1_check_response import V1CheckResponse
from openapi_server import util


async def health_service_check(request: web.Request, serving_name) -> web.Response:
    """health_service_check

    

    :param serving_name: The serving name as specified.
    :type serving_name: str

    """
    return web.Response(status=200)
