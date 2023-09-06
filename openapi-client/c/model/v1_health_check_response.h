/*
 * v1_health_check_response.h
 *
 * 
 */

#ifndef _v1_health_check_response_H_
#define _v1_health_check_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_health_check_response_t v1_health_check_response_t;

#include "health_check_response_serving_status.h"

// Enum  for v1_health_check_response

typedef enum  { an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__NULL = 0, an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__UNKNOWN, an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__SERVING, an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__NOT_SERVING, an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__SERVICE_UNKNOWN } an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__e;

char* v1_health_check_response_status_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__e status);

an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__e v1_health_check_response_status_FromString(char* status);



typedef struct v1_health_check_response_t {
    health_check_response_serving_status_t *status; // custom

} v1_health_check_response_t;

v1_health_check_response_t *v1_health_check_response_create(
    health_check_response_serving_status_t *status
);

void v1_health_check_response_free(v1_health_check_response_t *v1_health_check_response);

v1_health_check_response_t *v1_health_check_response_parseFromJSON(cJSON *v1_health_check_responseJSON);

cJSON *v1_health_check_response_convertToJSON(v1_health_check_response_t *v1_health_check_response);

#endif /* _v1_health_check_response_H_ */

