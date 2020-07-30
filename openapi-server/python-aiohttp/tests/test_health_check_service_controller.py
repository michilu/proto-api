# coding: utf-8

import pytest
import json
from aiohttp import web

from openapi_server.models.runtime_error import RuntimeError
from openapi_server.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse


async def test_health_check_service_health_check(client):
    """Test case for health_check_service_health_check

    
    """
    headers = { 
        'Accept': 'application/json',
        'ApiKeyAuth': 'special-key',
        'Authorization': 'Bearer special-key',
    }
    response = await client.request(
        method='GET',
        path='/healthCheck',
        headers=headers,
        )
    assert response.status == 200, 'Response body is : ' + (await response.read()).decode('utf-8')

