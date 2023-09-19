# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from app.openapi_server.models.v1_check_response import V1CheckResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestHealthServiceController(BaseTestCase):
    """HealthServiceController integration test stubs"""

    def test_health_service_check(self):
        """Test case for health_service_check

        
        """
        query_string = [('service', 'service_example')]
        response = self.client.open(
            '/v1/healthCheck',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
