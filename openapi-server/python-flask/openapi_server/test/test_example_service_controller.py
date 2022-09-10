# coding: utf-8

from __future__ import absolute_import
import unittest

from flask import json
from six import BytesIO

from openapi_server.models.v1_example_service_query_request import V1ExampleServiceQueryRequest  # noqa: E501
from openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestExampleServiceController(BaseTestCase):
    """ExampleServiceController integration test stubs"""

    def test_query(self):
        """Test case for query

        
        """
        body = openapi_server.V1ExampleServiceQueryRequest()
        headers = { 
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'ApiKeyAuth': 'special-key',
            'Authorization': 'Bearer special-key',
        }
        response = self.client.open(
            '/v1/example/{id}'.format(id='id_example'),
            method='POST',
            headers=headers,
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    unittest.main()
