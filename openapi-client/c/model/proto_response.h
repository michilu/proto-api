/*
 * proto_response.h
 *
 * 
 */

#ifndef _proto_response_H_
#define _proto_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "rpc_code.h"



typedef struct proto_response_t {
    rpc_code_e code; //enum model
    char *message; // string

} proto_response_t;

proto_response_t *proto_response_create(
    rpc_code_e code,
    char *message
);

void proto_response_free(proto_response_t *proto_response);

proto_response_t *proto_response_parseFromJSON(cJSON *proto_responseJSON);

cJSON *proto_response_convertToJSON(proto_response_t *proto_response);

#endif /* _proto_response_H_ */

