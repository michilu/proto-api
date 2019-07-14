/*
 * proto_request.h
 *
 * 
 */

#ifndef _proto_request_H_
#define _proto_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct proto_request_t {
    char *id; // string

} proto_request_t;

proto_request_t *proto_request_create(
    char *id
);

void proto_request_free(proto_request_t *proto_request);

proto_request_t *proto_request_parseFromJSON(cJSON *proto_requestJSON);

cJSON *proto_request_convertToJSON(proto_request_t *proto_request);

#endif /* _proto_request_H_ */

