#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_serving_status.h"


char* v1_serving_status_v1_serving_status_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status) {
    char *v1_serving_statusArray[] =  { "NULL", "SERVING_STATUS_UNKNOWN_UNSPECIFIED", "SERVING_STATUS_SERVING", "SERVING_STATUS_NOT_SERVING" };
    return v1_serving_statusArray[v1_serving_status];
}

an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status_v1_serving_status_FromString(char* v1_serving_status) {
    int stringToReturn = 0;
    char *v1_serving_statusArray[] =  { "NULL", "SERVING_STATUS_UNKNOWN_UNSPECIFIED", "SERVING_STATUS_SERVING", "SERVING_STATUS_NOT_SERVING" };
    size_t sizeofArray = sizeof(v1_serving_statusArray) / sizeof(v1_serving_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(v1_serving_status, v1_serving_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *v1_serving_status_convertToJSON(an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "v1_serving_status", v1_serving_status_v1_serving_status_ToString(v1_serving_status)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e v1_serving_status_parseFromJSON(cJSON *v1_serving_statusJSON) {
    if(!cJSON_IsString(v1_serving_statusJSON) || (v1_serving_statusJSON->valuestring == NULL)) {
        return 0;
    }
    return v1_serving_status_v1_serving_status_FromString(v1_serving_statusJSON->valuestring);
}
