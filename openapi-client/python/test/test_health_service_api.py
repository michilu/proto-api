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

from openapi_client.api.health_service_api import HealthServiceApi  # noqa: E501


class TestHealthServiceApi(unittest.TestCase):
    """HealthServiceApi unit test stubs"""

    def setUp(self) -> None:
        self.api = HealthServiceApi()  # noqa: E501

    def tearDown(self) -> None:
        pass

    def test_health_service_check(self) -> None:
        """Test case for health_service_check

        """
        pass


if __name__ == '__main__':
    unittest.main()