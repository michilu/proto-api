from typing import List, Dict
from aiohttp import web

from openapi_server.models.rpc_status import RpcStatus
from openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse
from openapi_server import util


async def example_service_query(request: web.Request, id, body) -> web.Response:
    """example_service_query

    

    :param id: 
    :type id: str
    :type id: str
    :param body: 
    :type body: 

    """
    return web.Response(status=200)
