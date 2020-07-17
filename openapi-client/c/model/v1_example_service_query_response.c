#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_example_service_query_response.h"



v1_example_service_query_response_t *v1_example_service_query_response_create(
    protov1_response_t *value
    ) {
    v1_example_service_query_response_t *v1_example_service_query_response_local_var = malloc(sizeof(v1_example_service_query_response_t));
    if (!v1_example_service_query_response_local_var) {
        return NULL;
    }
    v1_example_service_query_response_local_var->value = value;

    return v1_example_service_query_response_local_var;
}


void v1_example_service_query_response_free(v1_example_service_query_response_t *v1_example_service_query_response) {
    if(NULL == v1_example_service_query_response){
        return ;
    }
    listEntry_t *listEntry;
    protov1_response_free(v1_example_service_query_response->value);
    free(v1_example_service_query_response);
}

cJSON *v1_example_service_query_response_convertToJSON(v1_example_service_query_response_t *v1_example_service_query_response) {
    cJSON *item = cJSON_CreateObject();

    // v1_example_service_query_response->value
    if(v1_example_service_query_response->value) { 
    cJSON *value_local_JSON = protov1_response_convertToJSON(v1_example_service_query_response->value);
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

v1_example_service_query_response_t *v1_example_service_query_response_parseFromJSON(cJSON *v1_example_service_query_responseJSON){

    v1_example_service_query_response_t *v1_example_service_query_response_local_var = NULL;

    // v1_example_service_query_response->value
    cJSON *value = cJSON_GetObjectItemCaseSensitive(v1_example_service_query_responseJSON, "value");
    protov1_response_t *value_local_nonprim = NULL;
    if (value) { 
    value_local_nonprim = protov1_response_parseFromJSON(value); //nonprimitive
    }


    v1_example_service_query_response_local_var = v1_example_service_query_response_create (
        value ? value_local_nonprim : NULL
        );

    return v1_example_service_query_response_local_var;
end:
    return NULL;

}
