#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_health_check_response.h"


char* statusv1_health_check_response_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__e status) {
    char* statusArray[] =  { "NULL", "UNKNOWN", "SERVING", "NOT_SERVING", "SERVICE_UNKNOWN" };
	return statusArray[status];
}

an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__e statusv1_health_check_response_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "UNKNOWN", "SERVING", "NOT_SERVING", "SERVICE_UNKNOWN" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

v1_health_check_response_t *v1_health_check_response_create(
    health_check_response_serving_status_t *status
    ) {
    v1_health_check_response_t *v1_health_check_response_local_var = malloc(sizeof(v1_health_check_response_t));
    if (!v1_health_check_response_local_var) {
        return NULL;
    }
    v1_health_check_response_local_var->status = status;

    return v1_health_check_response_local_var;
}


void v1_health_check_response_free(v1_health_check_response_t *v1_health_check_response) {
    if(NULL == v1_health_check_response){
        return ;
    }
    listEntry_t *listEntry;
    if (v1_health_check_response->status) {
        health_check_response_serving_status_free(v1_health_check_response->status);
        v1_health_check_response->status = NULL;
    }
    free(v1_health_check_response);
}

cJSON *v1_health_check_response_convertToJSON(v1_health_check_response_t *v1_health_check_response) {
    cJSON *item = cJSON_CreateObject();

    // v1_health_check_response->status
    if(v1_health_check_response->status != an_example_of_generating_swagger_via_grpc_ecosystem__v1_health_check_response__NULL) {
    cJSON *status_local_JSON = health_check_response_serving_status_convertToJSON(v1_health_check_response->status);
    if(status_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "status", status_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_health_check_response_t *v1_health_check_response_parseFromJSON(cJSON *v1_health_check_responseJSON){

    v1_health_check_response_t *v1_health_check_response_local_var = NULL;

    // define the local variable for v1_health_check_response->status
    health_check_response_serving_status_t *status_local_nonprim = NULL;

    // v1_health_check_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(v1_health_check_responseJSON, "status");
    if (status) { 
    status_local_nonprim = health_check_response_serving_status_parseFromJSON(status); //custom
    }


    v1_health_check_response_local_var = v1_health_check_response_create (
        status ? status_local_nonprim : NULL
        );

    return v1_health_check_response_local_var;
end:
    if (status_local_nonprim) {
        health_check_response_serving_status_free(status_local_nonprim);
        status_local_nonprim = NULL;
    }
    return NULL;

}
