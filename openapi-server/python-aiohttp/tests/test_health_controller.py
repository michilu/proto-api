# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.rpc_status import RpcStatus
from openapi_server.models.stream_result_of_v1_health_check_response import StreamResultOfV1HealthCheckResponse
from openapi_server.models.v1_health_check_response import V1HealthCheckResponse


async def test_health_check(client):
    """Test case for health_check

    
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


async def test_health_watch(client):
    """Test case for health_watch

    
    """
    params = [('service', 'service_example')]
    headers = { 
        'Accept': 'application/json',
        'Authorization': 'Bearer special-key',
        'ApiKeyAuth': 'special-key',
    }
    response = await client.request(
        method='GET',
        path='/healthWatch',
        headers=headers,
        params=params,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

