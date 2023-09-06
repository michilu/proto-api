#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/rpc_status.h"
#include "../model/stream_result_of_v1_health_check_response.h"
#include "../model/v1_health_check_response.h"


v1_health_check_response_t*
HealthAPI_healthCheck(apiClient_t *apiClient, char * service );


stream_result_of_v1_health_check_response_t*
HealthAPI_healthWatch(apiClient_t *apiClient, char * service );


