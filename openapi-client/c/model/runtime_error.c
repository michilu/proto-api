#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "runtime_error.h"



runtime_error_t *runtime_error_create(
    char *error,
    int code,
    char *message,
    list_t *details
    ) {
    runtime_error_t *runtime_error_local_var = malloc(sizeof(runtime_error_t));
    if (!runtime_error_local_var) {
        return NULL;
    }
    runtime_error_local_var->error = error;
    runtime_error_local_var->code = code;
    runtime_error_local_var->message = message;
    runtime_error_local_var->details = details;

    return runtime_error_local_var;
}


void runtime_error_free(runtime_error_t *runtime_error) {
    if(NULL == runtime_error){
        return ;
    }
    listEntry_t *listEntry;
    free(runtime_error->error);
    free(runtime_error->message);
    list_ForEach(listEntry, runtime_error->details) {
        protobuf_any_free(listEntry->data);
    }
    list_free(runtime_error->details);
    free(runtime_error);
}

cJSON *runtime_error_convertToJSON(runtime_error_t *runtime_error) {
    cJSON *item = cJSON_CreateObject();

    // runtime_error->error
    if(runtime_error->error) { 
    if(cJSON_AddStringToObject(item, "error", runtime_error->error) == NULL) {
    goto fail; //String
    }
     } 


    // runtime_error->code
    if(runtime_error->code) { 
    if(cJSON_AddNumberToObject(item, "code", runtime_error->code) == NULL) {
    goto fail; //Numeric
    }
     } 


    // runtime_error->message
    if(runtime_error->message) { 
    if(cJSON_AddStringToObject(item, "message", runtime_error->message) == NULL) {
    goto fail; //String
    }
     } 


    // runtime_error->details
    if(runtime_error->details) { 
    cJSON *details = cJSON_AddArrayToObject(item, "details");
    if(details == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *detailsListEntry;
    if (runtime_error->details) {
    list_ForEach(detailsListEntry, runtime_error->details) {
    cJSON *itemLocal = protobuf_any_convertToJSON(detailsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(details, itemLocal);
    }
    }
     } 

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

runtime_error_t *runtime_error_parseFromJSON(cJSON *runtime_errorJSON){

    runtime_error_t *runtime_error_local_var = NULL;

    // runtime_error->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(runtime_errorJSON, "error");
    if (error) { 
    if(!cJSON_IsString(error))
    {
    goto end; //String
    }
    }

    // runtime_error->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(runtime_errorJSON, "code");
    if (code) { 
    if(!cJSON_IsNumber(code))
    {
    goto end; //Numeric
    }
    }

    // runtime_error->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(runtime_errorJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }

    // runtime_error->details
    cJSON *details = cJSON_GetObjectItemCaseSensitive(runtime_errorJSON, "details");
    list_t *detailsList;
    if (details) { 
    cJSON *details_local_nonprimitive;
    if(!cJSON_IsArray(details)){
        goto end; //nonprimitive container
    }

    detailsList = list_create();

    cJSON_ArrayForEach(details_local_nonprimitive,details )
    {
        if(!cJSON_IsObject(details_local_nonprimitive)){
            goto end;
        }
        protobuf_any_t *detailsItem = protobuf_any_parseFromJSON(details_local_nonprimitive);

        list_addElement(detailsList, detailsItem);
    }
    }


    runtime_error_local_var = runtime_error_create (
        error ? strdup(error->valuestring) : NULL,
        code ? code->valuedouble : 0,
        message ? strdup(message->valuestring) : NULL,
        details ? detailsList : NULL
        );

    return runtime_error_local_var;
end:
    return NULL;

}
