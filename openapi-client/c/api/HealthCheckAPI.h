#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../model/gateway_health_check_response.h"


gateway_health_check_response_t*
HealthCheckAPI_get(apiClient_t *apiClient);


