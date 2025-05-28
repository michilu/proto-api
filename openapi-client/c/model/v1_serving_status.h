/*
 * v1_serving_status.h
 *
 * 
 */

#ifndef _v1_serving_status_H_
#define _v1_serving_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct v1_serving_status_t v1_serving_status_t;


// Enum  for v1_serving_status

typedef enum { an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__NULL = 0, an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__SERVING_STATUS_UNKNOWN_UNSPECIFIED, an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__SERVING_STATUS_SERVING, an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__SERVING_STATUS_NOT_SERVING } an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e;

char* v1_serving_status_v1_serving_status_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status);

an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status_v1_serving_status_FromString(char* v1_serving_status);

cJSON *v1_serving_status_convertToJSON(an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status);

an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status_parseFromJSON(cJSON *v1_serving_statusJSON);

#endif /* _v1_serving_status_H_ */

