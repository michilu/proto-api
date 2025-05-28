#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_example_service_query_response.h"



static v1_example_service_query_response_t *v1_example_service_query_response_create_internal(
    protov1_status_t *status
    ) {
    v1_example_service_query_response_t *v1_example_service_query_response_local_var = malloc(sizeof(v1_example_service_query_response_t));
    if (!v1_example_service_query_response_local_var) {
        return NULL;
    }
    v1_example_service_query_response_local_var->status = status;

    v1_example_service_query_response_local_var->_library_owned = 1;
    return v1_example_service_query_response_local_var;
}

__attribute__((deprecated)) v1_example_service_query_response_t *v1_example_service_query_response_create(
    protov1_status_t *status
    ) {
    return v1_example_service_query_response_create_internal (
        status
        );
}

void v1_example_service_query_response_free(v1_example_service_query_response_t *v1_example_service_query_response) {
    if(NULL == v1_example_service_query_response){
        return ;
    }
    if(v1_example_service_query_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_example_service_query_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (v1_example_service_query_response->status) {
        protov1_status_free(v1_example_service_query_response->status);
        v1_example_service_query_response->status = NULL;
    }
    free(v1_example_service_query_response);
}

cJSON *v1_example_service_query_response_convertToJSON(v1_example_service_query_response_t *v1_example_service_query_response) {
    cJSON *item = cJSON_CreateObject();

    // v1_example_service_query_response->status
    if(v1_example_service_query_response->status) {
    cJSON *status_local_JSON = protov1_status_convertToJSON(v1_example_service_query_response->status);
    if(status_local_JSON == NULL) {
    goto fail; //model
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

v1_example_service_query_response_t *v1_example_service_query_response_parseFromJSON(cJSON *v1_example_service_query_responseJSON){

    v1_example_service_query_response_t *v1_example_service_query_response_local_var = NULL;

    // define the local variable for v1_example_service_query_response->status
    protov1_status_t *status_local_nonprim = NULL;

    // v1_example_service_query_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(v1_example_service_query_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    status_local_nonprim = protov1_status_parseFromJSON(status); //nonprimitive
    }


    v1_example_service_query_response_local_var = v1_example_service_query_response_create_internal (
        status ? status_local_nonprim : NULL
        );

    return v1_example_service_query_response_local_var;
end:
    if (status_local_nonprim) {
        protov1_status_free(status_local_nonprim);
        status_local_nonprim = NULL;
    }
    return NULL;

}
