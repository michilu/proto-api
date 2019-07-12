/*
 * gateway_health_check_response.h
 *
 * 
 */

#ifndef _gateway_health_check_response_H_
#define _gateway_health_check_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"



typedef struct gateway_health_check_response_t {
    int ok; //boolean

} gateway_health_check_response_t;

gateway_health_check_response_t *gateway_health_check_response_create(
    int ok
);

void gateway_health_check_response_free(gateway_health_check_response_t *gateway_health_check_response);

gateway_health_check_response_t *gateway_health_check_response_parseFromJSON(cJSON *gateway_health_check_responseJSON);

cJSON *gateway_health_check_response_convertToJSON(gateway_health_check_response_t *gateway_health_check_response);

#endif /* _gateway_health_check_response_H_ */

