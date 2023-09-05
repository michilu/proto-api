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
  V1ExampleServiceQueryRequest,
  V1ExampleServiceQueryResponse,
} from '../models/index';
import {
    V1ExampleServiceQueryRequestFromJSON,
    V1ExampleServiceQueryRequestToJSON,
    V1ExampleServiceQueryResponseFromJSON,
    V1ExampleServiceQueryResponseToJSON,
} from '../models/index';

export interface QueryRequest {
    id: string;
    body: V1ExampleServiceQueryRequest;
}

/**
 * 
 */
export class ExampleServiceApi extends runtime.BaseAPI {

    /**
     */
    async queryRaw(requestParameters: QueryRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<V1ExampleServiceQueryResponse>> {
        if (requestParameters.id === null || requestParameters.id === undefined) {
            throw new runtime.RequiredError('id','Required parameter requestParameters.id was null or undefined when calling query.');
        }

        if (requestParameters.body === null || requestParameters.body === undefined) {
            throw new runtime.RequiredError('body','Required parameter requestParameters.body was null or undefined when calling query.');
        }

        const queryParameters: any = {};

        const headerParameters: runtime.HTTPHeaders = {};

        headerParameters['Content-Type'] = 'application/json';

        if (this.configuration && this.configuration.accessToken) {
            // oauth required
            headerParameters["Authorization"] = await this.configuration.accessToken("OAuth2", ["read", "write"]);
        }

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["X-API-Key"] = this.configuration.apiKey("X-API-Key"); // ApiKeyAuth authentication
        }

        const response = await this.request({
            path: `/v1/example/{id}`.replace(`{${"id"}}`, encodeURIComponent(String(requestParameters.id))),
            method: 'POST',
            headers: headerParameters,
            query: queryParameters,
            body: V1ExampleServiceQueryRequestToJSON(requestParameters.body),
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => V1ExampleServiceQueryResponseFromJSON(jsonValue));
    }

    /**
     */
    async query(requestParameters: QueryRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<V1ExampleServiceQueryResponse> {
        const response = await this.queryRaw(requestParameters, initOverrides);
        return await response.value();
    }

}
