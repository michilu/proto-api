# coding: utf-8

"""
    An example of generating swagger via gRPC ecosystem.

    No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

    The version of the OpenAPI document: 1.0
    Contact: none@example.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import datetime

from openapi_client.models.protov1_response import Protov1Response  # noqa: E501

class TestProtov1Response(unittest.TestCase):
    """Protov1Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Protov1Response:
        """Test Protov1Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Protov1Response`
        """
        model = Protov1Response()  # noqa: E501
        if include_optional:
            return Protov1Response(
                code = 'OK',
                details = [
                    ''
                    ],
                message = ''
            )
        else:
            return Protov1Response(
        )
        """

    def testProtov1Response(self):
        """Test Protov1Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
