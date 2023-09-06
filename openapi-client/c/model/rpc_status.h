/*
 * rpc_status.h
 *
 * 
 */

#ifndef _rpc_status_H_
#define _rpc_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rpc_status_t rpc_status_t;

#include "protobuf_any.h"



typedef struct rpc_status_t {
    int code; //numeric
    char *message; // string
    list_t *details; //nonprimitive container

} rpc_status_t;

rpc_status_t *rpc_status_create(
    int code,
    char *message,
    list_t *details
);

void rpc_status_free(rpc_status_t *rpc_status);

rpc_status_t *rpc_status_parseFromJSON(cJSON *rpc_statusJSON);

cJSON *rpc_status_convertToJSON(rpc_status_t *rpc_status);

#endif /* _rpc_status_H_ */

