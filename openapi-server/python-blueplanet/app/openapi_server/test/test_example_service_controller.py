# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from app.openapi_server.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_server.test import BaseTestCase


class TestExampleServiceController(BaseTestCase):
    """ExampleServiceController integration test stubs"""

    def test_example_service_query(self):
        """Test case for example_service_query

        
        """
        body = None
        response = self.client.open(
            '/v1/example/{id}'.format(id='id_example'),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
