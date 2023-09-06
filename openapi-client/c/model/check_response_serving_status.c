#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "check_response_serving_status.h"


char* check_response_serving_status_check_response_serving_status_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__check_response_serving_status__e check_response_serving_status) {
    char *check_response_serving_statusArray[] =  { "NULL", "SERVING_STATUS_UNKNOWN_UNSPECIFIED", "SERVING_STATUS_SERVING", "SERVING_STATUS_NOT_SERVING" };
    return check_response_serving_statusArray[check_response_serving_status];
}

an_example_of_generating_swagger_via_grpc_ecosystem__check_response_serving_status__e check_response_serving_status_check_response_serving_status_FromString(char* check_response_serving_status) {
    int stringToReturn = 0;
    char *check_response_serving_statusArray[] =  { "NULL", "SERVING_STATUS_UNKNOWN_UNSPECIFIED", "SERVING_STATUS_SERVING", "SERVING_STATUS_NOT_SERVING" };
    size_t sizeofArray = sizeof(check_response_serving_statusArray) / sizeof(check_response_serving_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(check_response_serving_status, check_response_serving_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *check_response_serving_status_check_response_serving_status_convertToJSON(an_example_of_generating_swagger_via_grpc_ecosystem__check_response_serving_status__e check_response_serving_status) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "check_response_serving_status", check_response_serving_status_check_response_serving_status_ToString(check_response_serving_status)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

an_example_of_generating_swagger_via_grpc_ecosystem__check_response_serving_status__e check_response_serving_status_check_response_serving_status_parseFromJSON(cJSON *check_response_serving_statusJSON) {
    an_example_of_generating_swagger_via_grpc_ecosystem__check_response_serving_status__e *check_response_serving_status = NULL;
    an_example_of_generating_swagger_via_grpc_ecosystem__check_response_serving_status__e check_response_serving_statusVariable;
    cJSON *check_response_serving_statusVar = cJSON_GetObjectItemCaseSensitive(check_response_serving_statusJSON, "check_response_serving_status");
    if(!cJSON_IsString(check_response_serving_statusVar) || (check_response_serving_statusVar->valuestring == NULL)){
        goto end;
    }
    check_response_serving_statusVariable = check_response_serving_status_check_response_serving_status_FromString(check_response_serving_statusVar->valuestring);
    return check_response_serving_statusVariable;
end:
    return 0;
}
