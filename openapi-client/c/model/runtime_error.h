/*
 * runtime_error.h
 *
 * 
 */

#ifndef _runtime_error_H_
#define _runtime_error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct runtime_error_t runtime_error_t;

#include "protobuf_any.h"



typedef struct runtime_error_t {
    char *error; // string
    int code; //numeric
    char *message; // string
    list_t *details; //nonprimitive container

} runtime_error_t;

runtime_error_t *runtime_error_create(
    char *error,
    int code,
    char *message,
    list_t *details
);

void runtime_error_free(runtime_error_t *runtime_error);

runtime_error_t *runtime_error_parseFromJSON(cJSON *runtime_errorJSON);

cJSON *runtime_error_convertToJSON(runtime_error_t *runtime_error);

#endif /* _runtime_error_H_ */

