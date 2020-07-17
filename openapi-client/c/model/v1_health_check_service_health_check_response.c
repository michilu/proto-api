#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_health_check_service_health_check_response.h"



v1_health_check_service_health_check_response_t *v1_health_check_service_health_check_response_create(
    protov1_response_t *value
    ) {
    v1_health_check_service_health_check_response_t *v1_health_check_service_health_check_response_local_var = malloc(sizeof(v1_health_check_service_health_check_response_t));
    if (!v1_health_check_service_health_check_response_local_var) {
        return NULL;
    }
    v1_health_check_service_health_check_response_local_var->value = value;

    return v1_health_check_service_health_check_response_local_var;
}


void v1_health_check_service_health_check_response_free(v1_health_check_service_health_check_response_t *v1_health_check_service_health_check_response) {
    if(NULL == v1_health_check_service_health_check_response){
        return ;
    }
    listEntry_t *listEntry;
    protov1_response_free(v1_health_check_service_health_check_response->value);
    free(v1_health_check_service_health_check_response);
}

cJSON *v1_health_check_service_health_check_response_convertToJSON(v1_health_check_service_health_check_response_t *v1_health_check_service_health_check_response) {
    cJSON *item = cJSON_CreateObject();

    // v1_health_check_service_health_check_response->value
    if(v1_health_check_service_health_check_response->value) { 
    cJSON *value_local_JSON = protov1_response_convertToJSON(v1_health_check_service_health_check_response->value);
    if(value_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "value", value_local_JSON);
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

v1_health_check_service_health_check_response_t *v1_health_check_service_health_check_response_parseFromJSON(cJSON *v1_health_check_service_health_check_responseJSON){

    v1_health_check_service_health_check_response_t *v1_health_check_service_health_check_response_local_var = NULL;

    // v1_health_check_service_health_check_response->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(v1_health_check_service_health_check_responseJSON, "value");
    protov1_response_t *value_local_nonprim = NULL;
    if (value) { 
    value_local_nonprim = protov1_response_parseFromJSON(value); //nonprimitive
    }


    v1_health_check_service_health_check_response_local_var = v1_health_check_service_health_check_response_create (
        value ? value_local_nonprim : NULL
        );

    return v1_health_check_service_health_check_response_local_var;
end:
    return NULL;

}
