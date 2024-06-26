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
import type { CheckResponseServingStatus } from './CheckResponseServingStatus';
import {
    CheckResponseServingStatusFromJSON,
    CheckResponseServingStatusFromJSONTyped,
    CheckResponseServingStatusToJSON,
} from './CheckResponseServingStatus';

/**
 * The response message containing the health status of the service.
 * @export
 * @interface V1CheckResponse
 */
export interface V1CheckResponse {
    /**
     * 
     * @type {CheckResponseServingStatus}
     * @memberof V1CheckResponse
     */
    status: CheckResponseServingStatus;
}

/**
 * Check if a given object implements the V1CheckResponse interface.
 */
export function instanceOfV1CheckResponse(value: object): boolean {
    let isInstance = true;
    isInstance = isInstance && "status" in value;

    return isInstance;
}

export function V1CheckResponseFromJSON(json: any): V1CheckResponse {
    return V1CheckResponseFromJSONTyped(json, false);
}

export function V1CheckResponseFromJSONTyped(json: any, ignoreDiscriminator: boolean): V1CheckResponse {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'status': CheckResponseServingStatusFromJSON(json['status']),
    };
}

export function V1CheckResponseToJSON(value?: V1CheckResponse | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'status': CheckResponseServingStatusToJSON(value.status),
    };
}

