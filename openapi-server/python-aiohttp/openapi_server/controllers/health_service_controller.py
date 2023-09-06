from typing import List, Dict
from aiohttp import web

from openapi_server.models.rpc_status import RpcStatus
from openapi_server.models.v1_check_response import V1CheckResponse
from openapi_server import util


async def health_service_check(request: web.Request, service=None) -> web.Response:
    """health_service_check

    

    :param service: 
    :type service: str

    """
    return web.Response(status=200)
