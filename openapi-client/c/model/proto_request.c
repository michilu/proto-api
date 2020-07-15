#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "proto_request.h"



proto_request_t *proto_request_create(
    char *id
    ) {
    proto_request_t *proto_request_local_var = malloc(sizeof(proto_request_t));
    if (!proto_request_local_var) {
        return NULL;
    }
    proto_request_local_var->id = id;

    return proto_request_local_var;
}


void proto_request_free(proto_request_t *proto_request) {
    if(NULL == proto_request){
        return ;
    }
    listEntry_t *listEntry;
    free(proto_request->id);
    free(proto_request);
}

cJSON *proto_request_convertToJSON(proto_request_t *proto_request) {
    cJSON *item = cJSON_CreateObject();

    // proto_request->id
    if(proto_request->id) { 
    if(cJSON_AddStringToObject(item, "id", proto_request->id) == NULL) {
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

proto_request_t *proto_request_parseFromJSON(cJSON *proto_requestJSON){

    proto_request_t *proto_request_local_var = NULL;

    // proto_request->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(proto_requestJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }


    proto_request_local_var = proto_request_create (
        id ? strdup(id->valuestring) : NULL
        );

    return proto_request_local_var;
end:
    return NULL;

}
