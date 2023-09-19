import unittest

from flask import json

from openapi_server.models.v1_check_response import V1CheckResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestHealthServiceController(BaseTestCase):
    """HealthServiceController integration test stubs"""

    def test_health_service_check(self):
        """Test case for health_service_check

        
        """
        query_string = [('service', 'service_example')]
        headers = { 
            'Accept': 'application/json',
            'Authorization': 'Bearer special-key',
            'ApiKeyAuth': 'special-key',
        }
        response = self.client.open(
            '/v1/healthCheck',
            method='GET',
            headers=headers,
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
