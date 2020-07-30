#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/runtime_error.h"
#include "../model/v1_health_check_service_health_check_response.h"


v1_health_check_service_health_check_response_t*
HealthCheckServiceAPI_healthCheckServiceHealthCheck(apiClient_t *apiClient);


