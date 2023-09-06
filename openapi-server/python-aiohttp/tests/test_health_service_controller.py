# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.rpc_status import RpcStatus
from openapi_server.models.v1_check_response import V1CheckResponse


async def test_health_service_check(client):
    """Test case for health_service_check

    
    """
    params = [('service', 'service_example')]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'Bearer special-key',
        'ApiKeyAuth': 'special-key',
    }
    response = await client.request(
        method='GET',
        path='/healthCheck',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

