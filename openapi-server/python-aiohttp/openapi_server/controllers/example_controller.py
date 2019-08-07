from typing import List, Dict
from aiohttp import web

from openapi_server.models.proto_request import ProtoRequest
from openapi_server.models.proto_response import ProtoResponse
from openapi_server import util


async def query(request: web.Request, id, body) -> web.Response:
    """query

    

    :param id: 
    :type id: str
    :param body: 
    :type body: dict | bytes

    """
    body = ProtoRequest.from_dict(body)
    return web.Response(status=200)
