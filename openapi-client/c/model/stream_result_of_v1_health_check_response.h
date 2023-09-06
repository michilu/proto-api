/*
 * stream_result_of_v1_health_check_response.h
 *
 * 
 */

#ifndef _stream_result_of_v1_health_check_response_H_
#define _stream_result_of_v1_health_check_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct stream_result_of_v1_health_check_response_t stream_result_of_v1_health_check_response_t;

#include "rpc_status.h"
#include "v1_health_check_response.h"



typedef struct stream_result_of_v1_health_check_response_t {
    struct v1_health_check_response_t *result; //model
    struct rpc_status_t *error; //model

} stream_result_of_v1_health_check_response_t;

stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response_create(
    v1_health_check_response_t *result,
    rpc_status_t *error
);

void stream_result_of_v1_health_check_response_free(stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response);

stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response_parseFromJSON(cJSON *stream_result_of_v1_health_check_responseJSON);

cJSON *stream_result_of_v1_health_check_response_convertToJSON(stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response);

#endif /* _stream_result_of_v1_health_check_response_H_ */

