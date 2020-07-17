#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "v1_example_service_query_request.h"



v1_example_service_query_request_t *v1_example_service_query_request_create(
    char *id
    ) {
    v1_example_service_query_request_t *v1_example_service_query_request_local_var = malloc(sizeof(v1_example_service_query_request_t));
    if (!v1_example_service_query_request_local_var) {
        return NULL;
    }
    v1_example_service_query_request_local_var->id = id;

    return v1_example_service_query_request_local_var;
}


void v1_example_service_query_request_free(v1_example_service_query_request_t *v1_example_service_query_request) {
    if(NULL == v1_example_service_query_request){
        return ;
    }
    listEntry_t *listEntry;
    free(v1_example_service_query_request->id);
    free(v1_example_service_query_request);
}

cJSON *v1_example_service_query_request_convertToJSON(v1_example_service_query_request_t *v1_example_service_query_request) {
    cJSON *item = cJSON_CreateObject();

    // v1_example_service_query_request->id
    if(v1_example_service_query_request->id) { 
    if(cJSON_AddStringToObject(item, "id", v1_example_service_query_request->id) == NULL) {
    goto fail; //String
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

v1_example_service_query_request_t *v1_example_service_query_request_parseFromJSON(cJSON *v1_example_service_query_requestJSON){

    v1_example_service_query_request_t *v1_example_service_query_request_local_var = NULL;

    // v1_example_service_query_request->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(v1_example_service_query_requestJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }


    v1_example_service_query_request_local_var = v1_example_service_query_request_create (
        id ? strdup(id->valuestring) : NULL
        );

    return v1_example_service_query_request_local_var;
end:
    return NULL;

}
