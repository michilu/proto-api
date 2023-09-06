#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "health_check_response_serving_status.h"


char* health_check_response_serving_status_health_check_response_serving_status_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__health_check_response_serving_status__e health_check_response_serving_status) {
    char *health_check_response_serving_statusArray[] =  { "NULL", "UNKNOWN", "SERVING", "NOT_SERVING", "SERVICE_UNKNOWN" };
    return health_check_response_serving_statusArray[health_check_response_serving_status];
}

an_example_of_generating_swagger_via_grpc_ecosystem__health_check_response_serving_status__e health_check_response_serving_status_health_check_response_serving_status_FromString(char* health_check_response_serving_status) {
    int stringToReturn = 0;
    char *health_check_response_serving_statusArray[] =  { "NULL", "UNKNOWN", "SERVING", "NOT_SERVING", "SERVICE_UNKNOWN" };
    size_t sizeofArray = sizeof(health_check_response_serving_statusArray) / sizeof(health_check_response_serving_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(health_check_response_serving_status, health_check_response_serving_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *health_check_response_serving_status_health_check_response_serving_status_convertToJSON(an_example_of_generating_swagger_via_grpc_ecosystem__health_check_response_serving_status__e health_check_response_serving_status) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "health_check_response_serving_status", health_check_response_serving_status_health_check_response_serving_status_ToString(health_check_response_serving_status)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

an_example_of_generating_swagger_via_grpc_ecosystem__health_check_response_serving_status__e health_check_response_serving_status_health_check_response_serving_status_parseFromJSON(cJSON *health_check_response_serving_statusJSON) {
    an_example_of_generating_swagger_via_grpc_ecosystem__health_check_response_serving_status__e *health_check_response_serving_status = NULL;
    an_example_of_generating_swagger_via_grpc_ecosystem__health_check_response_serving_status__e health_check_response_serving_statusVariable;
    cJSON *health_check_response_serving_statusVar = cJSON_GetObjectItemCaseSensitive(health_check_response_serving_statusJSON, "health_check_response_serving_status");
    if(!cJSON_IsString(health_check_response_serving_statusVar) || (health_check_response_serving_statusVar->valuestring == NULL)){
        goto end;
    }
    health_check_response_serving_statusVariable = health_check_response_serving_status_health_check_response_serving_status_FromString(health_check_response_serving_statusVar->valuestring);
    return health_check_response_serving_statusVariable;
end:
    return 0;
}
