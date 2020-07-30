# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.runtime_error import RuntimeError
from openapi_server.models.v1_example_service_query_request import V1ExampleServiceQueryRequest
from openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse


async def test_example_service_query(client):
    """Test case for example_service_query

    
    """
    body = {}
    headers = { 
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'ApiKeyAuth': 'special-key',
        'Authorization': 'Bearer special-key',
    }
    response = await client.request(
        method='POST',
        path='/v1/example/{id}'.format(id='id_example'),
        headers=headers,
        json=body,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

