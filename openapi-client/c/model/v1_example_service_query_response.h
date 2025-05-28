/*
 * v1_example_service_query_response.h
 *
 * 
 */

#ifndef _v1_example_service_query_response_H_
#define _v1_example_service_query_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_example_service_query_response_t v1_example_service_query_response_t;

#include "protov1_status.h"



typedef struct v1_example_service_query_response_t {
    struct protov1_status_t *status; //model

    int _library_owned; // Is the library responsible for freeing this object?
} v1_example_service_query_response_t;

__attribute__((deprecated)) v1_example_service_query_response_t *v1_example_service_query_response_create(
    protov1_status_t *status
);

void v1_example_service_query_response_free(v1_example_service_query_response_t *v1_example_service_query_response);

v1_example_service_query_response_t *v1_example_service_query_response_parseFromJSON(cJSON *v1_example_service_query_responseJSON);

cJSON *v1_example_service_query_response_convertToJSON(v1_example_service_query_response_t *v1_example_service_query_response);

#endif /* _v1_example_service_query_response_H_ */

