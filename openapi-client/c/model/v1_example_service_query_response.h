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

#include "protov1_response.h"



typedef struct v1_example_service_query_response_t {
    struct protov1_response_t *value; //model

} v1_example_service_query_response_t;

v1_example_service_query_response_t *v1_example_service_query_response_create(
    protov1_response_t *value
);

void v1_example_service_query_response_free(v1_example_service_query_response_t *v1_example_service_query_response);

v1_example_service_query_response_t *v1_example_service_query_response_parseFromJSON(cJSON *v1_example_service_query_responseJSON);

cJSON *v1_example_service_query_response_convertToJSON(v1_example_service_query_response_t *v1_example_service_query_response);

#endif /* _v1_example_service_query_response_H_ */

