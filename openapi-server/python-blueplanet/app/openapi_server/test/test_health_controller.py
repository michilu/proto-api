# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from app.openapi_server.models.rpc_status import RpcStatus  # noqa: E501
from app.openapi_server.models.stream_result_of_v1_health_check_response import StreamResultOfV1HealthCheckResponse  # noqa: E501
from app.openapi_server.models.v1_health_check_response import V1HealthCheckResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestHealthController(BaseTestCase):
    """HealthController integration test stubs"""

    def test_health_check(self):
        """Test case for health_check

        
        """
        query_string = [('service', 'service_example')]
        response = self.client.open(
            '/healthCheck',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_health_watch(self):
        """Test case for health_watch

        
        """
        query_string = [('service', 'service_example')]
        response = self.client.open(
            '/healthWatch',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
