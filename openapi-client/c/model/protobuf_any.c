#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "protobuf_any.h"



protobuf_any_t *protobuf_any_create(
    char *type
    ) {
    protobuf_any_t *protobuf_any_local_var = malloc(sizeof(protobuf_any_t));
    if (!protobuf_any_local_var) {
        return NULL;
    }
    protobuf_any_local_var->type = type;

    return protobuf_any_local_var;
}


void protobuf_any_free(protobuf_any_t *protobuf_any) {
    if(NULL == protobuf_any){
        return ;
    }
    listEntry_t *listEntry;
    if (protobuf_any->type) {
        free(protobuf_any->type);
        protobuf_any->type = NULL;
    }
    free(protobuf_any);
}

cJSON *protobuf_any_convertToJSON(protobuf_any_t *protobuf_any) {
    cJSON *item = cJSON_CreateObject();

    // protobuf_any->type
    if(protobuf_any->type) {
    if(cJSON_AddStringToObject(item, "@type", protobuf_any->type) == NULL) {
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

protobuf_any_t *protobuf_any_parseFromJSON(cJSON *protobuf_anyJSON){

    protobuf_any_t *protobuf_any_local_var = NULL;

    // protobuf_any->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(protobuf_anyJSON, "@type");
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    protobuf_any_local_var = protobuf_any_create (
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return protobuf_any_local_var;
end:
    return NULL;

}
