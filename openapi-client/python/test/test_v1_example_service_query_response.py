# coding: utf-8

"""
    An example of generating swagger via gRPC ecosystem.

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: none@example.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest
import datetime

import openapi_client
from openapi_client.models.v1_example_service_query_response import V1ExampleServiceQueryResponse  # noqa: E501
from openapi_client.rest import ApiException

class TestV1ExampleServiceQueryResponse(unittest.TestCase):
    """V1ExampleServiceQueryResponse unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test V1ExampleServiceQueryResponse
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.v1_example_service_query_response.V1ExampleServiceQueryResponse()  # noqa: E501
        if include_optional :
            return V1ExampleServiceQueryResponse(
                value = openapi_client.models.protov1_response.protov1Response(
                    code = 'OK', 
                    message = '0', )
            )
        else :
            return V1ExampleServiceQueryResponse(
        )

    def testV1ExampleServiceQueryResponse(self):
        """Test V1ExampleServiceQueryResponse"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
