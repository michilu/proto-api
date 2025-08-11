#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/v1_check_response.h"


v1_check_response_t*
HealthServiceAPI_healthServiceCheck(apiClient_t *apiClient, char *servingName);


