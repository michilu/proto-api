from typing import List, Dict
from aiohttp import web

from openapi_server.models.proto_response import ProtoResponse
from openapi_server import util


async def health_check(request: web.Request, ) -> web.Response:
    """health_check

    


    """
    return web.Response(status=200)
