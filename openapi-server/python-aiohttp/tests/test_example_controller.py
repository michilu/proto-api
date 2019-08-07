# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.proto_request import ProtoRequest
from openapi_server.models.proto_response import ProtoResponse


async def test_query(client):
    """Test case for query

    
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

