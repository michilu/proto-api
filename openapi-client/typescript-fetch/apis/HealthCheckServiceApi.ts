/* tslint:disable */
/* eslint-disable */
/**
 * An example of generating swagger via gRPC ecosystem.
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0
 * Contact: none@example.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import * as runtime from '../runtime';
import {
    RuntimeError,
    RuntimeErrorFromJSON,
    RuntimeErrorToJSON,
    V1HealthCheckServiceHealthCheckResponse,
    V1HealthCheckServiceHealthCheckResponseFromJSON,
    V1HealthCheckServiceHealthCheckResponseToJSON,
} from '../models';

/**
 * 
 */
export class HealthCheckServiceApi extends runtime.BaseAPI {

    /**
     */
    async healthCheckServiceHealthCheckRaw(): Promise<runtime.ApiResponse<V1HealthCheckServiceHealthCheckResponse>> {
        const queryParameters: runtime.HTTPQuery = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["X-API-Key"] = this.configuration.apiKey("X-API-Key"); // ApiKeyAuth authentication
        }

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            if (typeof this.configuration.accessToken === 'function') {
                headerParameters["Authorization"] = this.configuration.accessToken("OAuth2", ["read", "write"]);
            } else {
                headerParameters["Authorization"] = this.configuration.accessToken;
            }
        }

        const response = await this.request({
            path: `/healthCheck`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        });

        return new runtime.JSONApiResponse(response, (jsonValue) => V1HealthCheckServiceHealthCheckResponseFromJSON(jsonValue));
    }

    /**
     */
    async healthCheckServiceHealthCheck(): Promise<V1HealthCheckServiceHealthCheckResponse> {
        const response = await this.healthCheckServiceHealthCheckRaw();
        return await response.value();
    }

}
