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

import { exists, mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface V1ExampleServiceQueryRequest
 */
export interface V1ExampleServiceQueryRequest {
    /**
     * 
     * @type {string}
     * @memberof V1ExampleServiceQueryRequest
     */
    id?: string;
}

/**
 * Check if a given object implements the V1ExampleServiceQueryRequest interface.
 */
export function instanceOfV1ExampleServiceQueryRequest(value: object): boolean {
    let isInstance = true;

    return isInstance;
}

export function V1ExampleServiceQueryRequestFromJSON(json: any): V1ExampleServiceQueryRequest {
    return V1ExampleServiceQueryRequestFromJSONTyped(json, false);
}

export function V1ExampleServiceQueryRequestFromJSONTyped(json: any, ignoreDiscriminator: boolean): V1ExampleServiceQueryRequest {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': !exists(json, 'id') ? undefined : json['id'],
    };
}

export function V1ExampleServiceQueryRequestToJSON(value?: V1ExampleServiceQueryRequest | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'id': value.id,
    };
}

