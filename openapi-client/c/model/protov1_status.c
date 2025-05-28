#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "protov1_status.h"



static protov1_status_t *protov1_status_create_internal(
    char *type,
    int status,
    char *title,
    char *detail,
    char *instance,
    list_t *extensions,
    an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e code
    ) {
    protov1_status_t *protov1_status_local_var = malloc(sizeof(protov1_status_t));
    if (!protov1_status_local_var) {
        return NULL;
    }
    protov1_status_local_var->type = type;
    protov1_status_local_var->status = status;
    protov1_status_local_var->title = title;
    protov1_status_local_var->detail = detail;
    protov1_status_local_var->instance = instance;
    protov1_status_local_var->extensions = extensions;
    protov1_status_local_var->code = code;

    protov1_status_local_var->_library_owned = 1;
    return protov1_status_local_var;
}

__attribute__((deprecated)) protov1_status_t *protov1_status_create(
    char *type,
    int status,
    char *title,
    char *detail,
    char *instance,
    list_t *extensions,
    an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e code
    ) {
    return protov1_status_create_internal (
        type,
        status,
        title,
        detail,
        instance,
        extensions,
        code
        );
}

void protov1_status_free(protov1_status_t *protov1_status) {
    if(NULL == protov1_status){
        return ;
    }
    if(protov1_status->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "protov1_status_free");
        return ;
    }
    listEntry_t *listEntry;
    if (protov1_status->type) {
        free(protov1_status->type);
        protov1_status->type = NULL;
    }
    if (protov1_status->title) {
        free(protov1_status->title);
        protov1_status->title = NULL;
    }
    if (protov1_status->detail) {
        free(protov1_status->detail);
        protov1_status->detail = NULL;
    }
    if (protov1_status->instance) {
        free(protov1_status->instance);
        protov1_status->instance = NULL;
    }
    if (protov1_status->extensions) {
        list_ForEach(listEntry, protov1_status->extensions) {
            free(listEntry->data);
        }
        list_freeList(protov1_status->extensions);
        protov1_status->extensions = NULL;
    }
    free(protov1_status);
}

cJSON *protov1_status_convertToJSON(protov1_status_t *protov1_status) {
    cJSON *item = cJSON_CreateObject();

    // protov1_status->type
    if(protov1_status->type) {
    if(cJSON_AddStringToObject(item, "type", protov1_status->type) == NULL) {
    goto fail; //String
    }
    }


    // protov1_status->status
    if(protov1_status->status) {
    if(cJSON_AddNumberToObject(item, "status", protov1_status->status) == NULL) {
    goto fail; //Numeric
    }
    }


    // protov1_status->title
    if(protov1_status->title) {
    if(cJSON_AddStringToObject(item, "title", protov1_status->title) == NULL) {
    goto fail; //String
    }
    }


    // protov1_status->detail
    if(protov1_status->detail) {
    if(cJSON_AddStringToObject(item, "detail", protov1_status->detail) == NULL) {
    goto fail; //String
    }
    }


    // protov1_status->instance
    if(protov1_status->instance) {
    if(cJSON_AddStringToObject(item, "instance", protov1_status->instance) == NULL) {
    goto fail; //String
    }
    }


    // protov1_status->extensions
    if(protov1_status->extensions) {
    cJSON *extensions = cJSON_AddArrayToObject(item, "extensions");
    if(extensions == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *extensionsListEntry;
    list_ForEach(extensionsListEntry, protov1_status->extensions) {
    if(cJSON_AddStringToObject(extensions, "", extensionsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // protov1_status->code
    if(protov1_status->code != an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__NULL) {
    cJSON *code_local_JSON = rpc_code_convertToJSON(protov1_status->code);
    if(code_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "code", code_local_JSON);
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

protov1_status_t *protov1_status_parseFromJSON(cJSON *protov1_statusJSON){

    protov1_status_t *protov1_status_local_var = NULL;

    // define the local list for protov1_status->extensions
    list_t *extensionsList = NULL;

    // define the local variable for protov1_status->code
    an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e code_local_nonprim = 0;

    // protov1_status->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // protov1_status->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsNumber(status))
    {
    goto end; //Numeric
    }
    }

    // protov1_status->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // protov1_status->detail
    cJSON *detail = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "detail");
    if (cJSON_IsNull(detail)) {
        detail = NULL;
    }
    if (detail) { 
    if(!cJSON_IsString(detail) && !cJSON_IsNull(detail))
    {
    goto end; //String
    }
    }

    // protov1_status->instance
    cJSON *instance = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "instance");
    if (cJSON_IsNull(instance)) {
        instance = NULL;
    }
    if (instance) { 
    if(!cJSON_IsString(instance) && !cJSON_IsNull(instance))
    {
    goto end; //String
    }
    }

    // protov1_status->extensions
    cJSON *extensions = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "extensions");
    if (cJSON_IsNull(extensions)) {
        extensions = NULL;
    }
    if (extensions) { 
    cJSON *extensions_local = NULL;
    if(!cJSON_IsArray(extensions)) {
        goto end;//primitive container
    }
    extensionsList = list_createList();

    cJSON_ArrayForEach(extensions_local, extensions)
    {
        if(!cJSON_IsString(extensions_local))
        {
            goto end;
        }
        list_addElement(extensionsList , strdup(extensions_local->valuestring));
    }
    }

    // protov1_status->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(protov1_statusJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    code_local_nonprim = rpc_code_parseFromJSON(code); //custom
    }


    protov1_status_local_var = protov1_status_create_internal (
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        status ? status->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        detail && !cJSON_IsNull(detail) ? strdup(detail->valuestring) : NULL,
        instance && !cJSON_IsNull(instance) ? strdup(instance->valuestring) : NULL,
        extensions ? extensionsList : NULL,
        code ? code_local_nonprim : 0
        );

    return protov1_status_local_var;
end:
    if (extensionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, extensionsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(extensionsList);
        extensionsList = NULL;
    }
    if (code_local_nonprim) {
        code_local_nonprim = 0;
    }
    return NULL;

}
