from typing import List, Dict
from aiohttp import web

from openapi_server.models.v1_example_service_query_request import V1ExampleServiceQueryRequest
from openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse
from openapi_server import util


async def query(request: web.Request, id, body) -> web.Response:
    """query

    

    :param id: 
    :type id: str
    :param body: 
    :type body: dict | bytes

    """
    body = V1ExampleServiceQueryRequest.from_dict(body)
    return web.Response(status=200)
