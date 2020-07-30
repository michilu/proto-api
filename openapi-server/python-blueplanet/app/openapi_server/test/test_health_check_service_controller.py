# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from app.openapi_server.models.runtime_error import RuntimeError  # noqa: E501
from app.openapi_server.models.v1_health_check_service_health_check_response import V1HealthCheckServiceHealthCheckResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestHealthCheckServiceController(BaseTestCase):
    """HealthCheckServiceController integration test stubs"""

    def test_health_check_service_health_check(self):
        """Test case for health_check_service_health_check

        
        """
        response = self.client.open(
            '/healthCheck',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
