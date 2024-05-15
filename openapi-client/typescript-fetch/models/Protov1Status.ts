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
import type { RpcCode } from './RpcCode';
import {
    RpcCodeFromJSON,
    RpcCodeFromJSONTyped,
    RpcCodeToJSON,
} from './RpcCode';

/**
 * 
 * @export
 * @interface Protov1Status
 */
export interface Protov1Status {
    /**
     * The "type" member is a JSON string containing a URI reference [URI] that identifies the problem/response type. Consumers MUST use the "type" URI (after resolution, if necessary) as the problem/response type's primary identifier.
     * When this member is not present, its value is assumed to be "about:blank".
     * @type {string}
     * @memberof Protov1Status
     */
    type?: string;
    /**
     * The "status" member is a JSON number indicating the HTTP status code ([HTTP], Section 15) generated by the origin server for this occurrence of the problem/response.
     * The HTTP status code that corresponds to `google.rpc.Status.code`.
     * @type {number}
     * @memberof Protov1Status
     */
    status?: number;
    /**
     * The "title" member is a JSON string containing a short, human-readable summary of the problem/response type.
     * @type {string}
     * @memberof Protov1Status
     */
    title?: string;
    /**
     * The "detail" member is a JSON string containing a human-readable explanation specific to this occurrence of the problem/response.
     * The "detail" string, if present, ought to focus on helping the client correct the problem/response, rather than giving debugging information.
     * @type {string}
     * @memberof Protov1Status
     */
    detail?: string;
    /**
     * The "instance" member is a JSON string containing a URI reference that identifies the specific occurrence of the problem/response.
     * @type {string}
     * @memberof Protov1Status
     */
    instance?: string;
    /**
     * Problem type definitions MAY extend the problem details object with additional members that are specific to that problem type.
     * @type {Array<string>}
     * @memberof Protov1Status
     */
    extensions?: Array<string>;
    /**
     * 
     * @type {RpcCode}
     * @memberof Protov1Status
     */
    code?: RpcCode;
}

/**
 * Check if a given object implements the Protov1Status interface.
 */
export function instanceOfProtov1Status(value: object): boolean {
    let isInstance = true;

    return isInstance;
}

export function Protov1StatusFromJSON(json: any): Protov1Status {
    return Protov1StatusFromJSONTyped(json, false);
}

export function Protov1StatusFromJSONTyped(json: any, ignoreDiscriminator: boolean): Protov1Status {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'type': !exists(json, 'type') ? undefined : json['type'],
        'status': !exists(json, 'status') ? undefined : json['status'],
        'title': !exists(json, 'title') ? undefined : json['title'],
        'detail': !exists(json, 'detail') ? undefined : json['detail'],
        'instance': !exists(json, 'instance') ? undefined : json['instance'],
        'extensions': !exists(json, 'extensions') ? undefined : json['extensions'],
        'code': !exists(json, 'code') ? undefined : RpcCodeFromJSON(json['code']),
    };
}

export function Protov1StatusToJSON(value?: Protov1Status | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'type': value.type,
        'status': value.status,
        'title': value.title,
        'detail': value.detail,
        'instance': value.instance,
        'extensions': value.extensions,
        'code': RpcCodeToJSON(value.code),
    };
}
