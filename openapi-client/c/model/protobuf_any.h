/*
 * protobuf_any.h
 *
 * 
 */

#ifndef _protobuf_any_H_
#define _protobuf_any_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct protobuf_any_t protobuf_any_t;

#include "object.h"



typedef struct protobuf_any_t {
    char *type; // string

} protobuf_any_t;

protobuf_any_t *protobuf_any_create(
    char *type
);

void protobuf_any_free(protobuf_any_t *protobuf_any);

protobuf_any_t *protobuf_any_parseFromJSON(cJSON *protobuf_anyJSON);

cJSON *protobuf_any_convertToJSON(protobuf_any_t *protobuf_any);

#endif /* _protobuf_any_H_ */

