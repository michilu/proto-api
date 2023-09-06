#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rpc_status.h"



rpc_status_t *rpc_status_create(
    int code,
    list_t *details,
    char *message
    ) {
    rpc_status_t *rpc_status_local_var = malloc(sizeof(rpc_status_t));
    if (!rpc_status_local_var) {
        return NULL;
    }
    rpc_status_local_var->code = code;
    rpc_status_local_var->details = details;
    rpc_status_local_var->message = message;

    return rpc_status_local_var;
}


void rpc_status_free(rpc_status_t *rpc_status) {
    if(NULL == rpc_status){
        return ;
    }
    listEntry_t *listEntry;
    if (rpc_status->details) {
        list_ForEach(listEntry, rpc_status->details) {
            protobuf_any_free(listEntry->data);
        }
        list_freeList(rpc_status->details);
        rpc_status->details = NULL;
    }
    if (rpc_status->message) {
        free(rpc_status->message);
        rpc_status->message = NULL;
    }
    free(rpc_status);
}

cJSON *rpc_status_convertToJSON(rpc_status_t *rpc_status) {
    cJSON *item = cJSON_CreateObject();

    // rpc_status->code
    if(rpc_status->code) {
    if(cJSON_AddNumberToObject(item, "code", rpc_status->code) == NULL) {
    goto fail; //Numeric
    }
    }


    // rpc_status->details
    if(rpc_status->details) {
    cJSON *details = cJSON_AddArrayToObject(item, "details");
    if(details == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *detailsListEntry;
    if (rpc_status->details) {
    list_ForEach(detailsListEntry, rpc_status->details) {
    cJSON *itemLocal = protobuf_any_convertToJSON(detailsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(details, itemLocal);
    }
    }
    }


    // rpc_status->message
    if(rpc_status->message) {
    if(cJSON_AddStringToObject(item, "message", rpc_status->message) == NULL) {
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

rpc_status_t *rpc_status_parseFromJSON(cJSON *rpc_statusJSON){

    rpc_status_t *rpc_status_local_var = NULL;

    // define the local list for rpc_status->details
    list_t *detailsList = NULL;

    // rpc_status->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(rpc_statusJSON, "code");
    if (code) { 
    if(!cJSON_IsNumber(code))
    {
    goto end; //Numeric
    }
    }

    // rpc_status->details
    cJSON *details = cJSON_GetObjectItemCaseSensitive(rpc_statusJSON, "details");
    if (details) { 
    cJSON *details_local_nonprimitive = NULL;
    if(!cJSON_IsArray(details)){
        goto end; //nonprimitive container
    }

    detailsList = list_createList();

    cJSON_ArrayForEach(details_local_nonprimitive,details )
    {
        if(!cJSON_IsObject(details_local_nonprimitive)){
            goto end;
        }
        protobuf_any_t *detailsItem = protobuf_any_parseFromJSON(details_local_nonprimitive);

        list_addElement(detailsList, detailsItem);
    }
    }

    // rpc_status->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(rpc_statusJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }


    rpc_status_local_var = rpc_status_create (
        code ? code->valuedouble : 0,
        details ? detailsList : NULL,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL
        );

    return rpc_status_local_var;
end:
    if (detailsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, detailsList) {
            protobuf_any_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(detailsList);
        detailsList = NULL;
    }
    return NULL;

}
