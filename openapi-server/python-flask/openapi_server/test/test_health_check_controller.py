# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from openapi_server.models.proto_response import ProtoResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestHealthCheckController(BaseTestCase):
    """HealthCheckController integration test stubs"""

    def test_health_check(self):
        """Test case for health_check

        
        """
        headers = { 
            'Accept': 'application/json',
            'ApiKeyAuth': 'special-key',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/healthCheck',
            method='GET',
            headers=headers)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()