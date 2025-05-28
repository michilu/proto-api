#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_check_response.h"



static v1_check_response_t *v1_check_response_create_internal(
    an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e status
    ) {
    v1_check_response_t *v1_check_response_local_var = malloc(sizeof(v1_check_response_t));
    if (!v1_check_response_local_var) {
        return NULL;
    }
    v1_check_response_local_var->status = status;

    v1_check_response_local_var->_library_owned = 1;
    return v1_check_response_local_var;
}

__attribute__((deprecated)) v1_check_response_t *v1_check_response_create(
    an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e status
    ) {
    return v1_check_response_create_internal (
        status
        );
}

void v1_check_response_free(v1_check_response_t *v1_check_response) {
    if(NULL == v1_check_response){
        return ;
    }
    if(v1_check_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "v1_check_response_free");
        return ;
    }
    listEntry_t *listEntry;
    free(v1_check_response);
}

cJSON *v1_check_response_convertToJSON(v1_check_response_t *v1_check_response) {
    cJSON *item = cJSON_CreateObject();

    // v1_check_response->status
    if (an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__NULL == v1_check_response->status) {
        goto fail;
    }
    cJSON *status_local_JSON = v1_serving_status_convertToJSON(v1_check_response->status);
    if(status_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "status", status_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_check_response_t *v1_check_response_parseFromJSON(cJSON *v1_check_responseJSON){

    v1_check_response_t *v1_check_response_local_var = NULL;

    // define the local variable for v1_check_response->status
    an_example_of_generating_swagger_via_grpc_ecosystem__v1_serving_status__e status_local_nonprim = 0;

    // v1_check_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(v1_check_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (!status) {
        goto end;
    }

    
    status_local_nonprim = v1_serving_status_parseFromJSON(status); //custom


    v1_check_response_local_var = v1_check_response_create_internal (
        status_local_nonprim
        );

    return v1_check_response_local_var;
end:
    if (status_local_nonprim) {
        status_local_nonprim = 0;
    }
    return NULL;

}
