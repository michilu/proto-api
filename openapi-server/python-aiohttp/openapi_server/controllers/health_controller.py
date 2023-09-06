from typing import List, Dict
from aiohttp import web

from openapi_server.models.rpc_status import RpcStatus
from openapi_server.models.stream_result_of_v1_health_check_response import StreamResultOfV1HealthCheckResponse
from openapi_server.models.v1_health_check_response import V1HealthCheckResponse
from openapi_server import util


async def health_check(request: web.Request, service=None) -> web.Response:
    """health_check

    

    :param service: 
    :type service: str

    """
    return web.Response(status=200)


async def health_watch(request: web.Request, service=None) -> web.Response:
    """health_watch

    

    :param service: 
    :type service: str

    """
    return web.Response(status=200)
