/*
 * v1_check_response.h
 *
 * The response message containing the health status of the service.
 */

#ifndef _v1_check_response_H_
#define _v1_check_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_check_response_t v1_check_response_t;

#include "v1_serving_status.h"



typedef struct v1_check_response_t {
    an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e status; //referenced enum

    int _library_owned; // Is the library responsible for freeing this object?
} v1_check_response_t;

__attribute__((deprecated)) v1_check_response_t *v1_check_response_create(
    an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e status
);

void v1_check_response_free(v1_check_response_t *v1_check_response);

v1_check_response_t *v1_check_response_parseFromJSON(cJSON *v1_check_responseJSON);

cJSON *v1_check_response_convertToJSON(v1_check_response_t *v1_check_response);

#endif /* _v1_check_response_H_ */

