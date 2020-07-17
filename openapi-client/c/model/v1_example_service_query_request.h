/*
 * v1_example_service_query_request.h
 *
 * 
 */

#ifndef _v1_example_service_query_request_H_
#define _v1_example_service_query_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_example_service_query_request_t v1_example_service_query_request_t;




typedef struct v1_example_service_query_request_t {
    char *id; // string

} v1_example_service_query_request_t;

v1_example_service_query_request_t *v1_example_service_query_request_create(
    char *id
);

void v1_example_service_query_request_free(v1_example_service_query_request_t *v1_example_service_query_request);

v1_example_service_query_request_t *v1_example_service_query_request_parseFromJSON(cJSON *v1_example_service_query_requestJSON);

cJSON *v1_example_service_query_request_convertToJSON(v1_example_service_query_request_t *v1_example_service_query_request);

#endif /* _v1_example_service_query_request_H_ */

