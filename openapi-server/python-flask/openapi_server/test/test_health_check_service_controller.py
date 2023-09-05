import unittest

from flask import json

from openapi_server.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestHealthCheckServiceController(BaseTestCase):
    """HealthCheckServiceController integration test stubs"""

    def test_health_check(self):
        """Test case for health_check

        
        """
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Bearer special-key',
            'ApiKeyAuth': 'special-key',
        }
        response = self.client.open(
            '/healthCheck',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
