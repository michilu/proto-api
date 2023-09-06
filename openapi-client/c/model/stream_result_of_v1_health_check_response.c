#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "stream_result_of_v1_health_check_response.h"



stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response_create(
    v1_health_check_response_t *result,
    rpc_status_t *error
    ) {
    stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response_local_var = malloc(sizeof(stream_result_of_v1_health_check_response_t));
    if (!stream_result_of_v1_health_check_response_local_var) {
        return NULL;
    }
    stream_result_of_v1_health_check_response_local_var->result = result;
    stream_result_of_v1_health_check_response_local_var->error = error;

    return stream_result_of_v1_health_check_response_local_var;
}


void stream_result_of_v1_health_check_response_free(stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response) {
    if(NULL == stream_result_of_v1_health_check_response){
        return ;
    }
    listEntry_t *listEntry;
    if (stream_result_of_v1_health_check_response->result) {
        v1_health_check_response_free(stream_result_of_v1_health_check_response->result);
        stream_result_of_v1_health_check_response->result = NULL;
    }
    if (stream_result_of_v1_health_check_response->error) {
        rpc_status_free(stream_result_of_v1_health_check_response->error);
        stream_result_of_v1_health_check_response->error = NULL;
    }
    free(stream_result_of_v1_health_check_response);
}

cJSON *stream_result_of_v1_health_check_response_convertToJSON(stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response) {
    cJSON *item = cJSON_CreateObject();

    // stream_result_of_v1_health_check_response->result
    if(stream_result_of_v1_health_check_response->result) {
    cJSON *result_local_JSON = v1_health_check_response_convertToJSON(stream_result_of_v1_health_check_response->result);
    if(result_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "result", result_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // stream_result_of_v1_health_check_response->error
    if(stream_result_of_v1_health_check_response->error) {
    cJSON *error_local_JSON = rpc_status_convertToJSON(stream_result_of_v1_health_check_response->error);
    if(error_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "error", error_local_JSON);
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

stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response_parseFromJSON(cJSON *stream_result_of_v1_health_check_responseJSON){

    stream_result_of_v1_health_check_response_t *stream_result_of_v1_health_check_response_local_var = NULL;

    // define the local variable for stream_result_of_v1_health_check_response->result
    v1_health_check_response_t *result_local_nonprim = NULL;

    // define the local variable for stream_result_of_v1_health_check_response->error
    rpc_status_t *error_local_nonprim = NULL;

    // stream_result_of_v1_health_check_response->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(stream_result_of_v1_health_check_responseJSON, "result");
    if (result) { 
    result_local_nonprim = v1_health_check_response_parseFromJSON(result); //nonprimitive
    }

    // stream_result_of_v1_health_check_response->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(stream_result_of_v1_health_check_responseJSON, "error");
    if (error) { 
    error_local_nonprim = rpc_status_parseFromJSON(error); //nonprimitive
    }


    stream_result_of_v1_health_check_response_local_var = stream_result_of_v1_health_check_response_create (
        result ? result_local_nonprim : NULL,
        error ? error_local_nonprim : NULL
        );

    return stream_result_of_v1_health_check_response_local_var;
end:
    if (result_local_nonprim) {
        v1_health_check_response_free(result_local_nonprim);
        result_local_nonprim = NULL;
    }
    if (error_local_nonprim) {
        rpc_status_free(error_local_nonprim);
        error_local_nonprim = NULL;
    }
    return NULL;

}
