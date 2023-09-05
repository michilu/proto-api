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
import type {
  V1HealthCheckServiceHealthCheckResponse,
} from '../models/index';
import {
    V1HealthCheckServiceHealthCheckResponseFromJSON,
    V1HealthCheckServiceHealthCheckResponseToJSON,
} from '../models/index';

/**
 * 
 */
export class HealthCheckServiceApi extends runtime.BaseAPI {

    /**
     */
    async healthCheckRaw(initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<V1HealthCheckServiceHealthCheckResponse>> {
        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("OAuth2", ["read", "write"]);
        }

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["X-API-Key"] = this.configuration.apiKey("X-API-Key"); // ApiKeyAuth authentication
        }

        const response = await this.request({
            path: `/healthCheck`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => V1HealthCheckServiceHealthCheckResponseFromJSON(jsonValue));
    }

    /**
     */
    async healthCheck(initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<V1HealthCheckServiceHealthCheckResponse> {
        const response = await this.healthCheckRaw(initOverrides);
        return await response.value();
    }

}
