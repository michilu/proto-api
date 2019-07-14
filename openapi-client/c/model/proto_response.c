#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "proto_response.h"



proto_response_t *proto_response_create(
    rpc_code_e code,
    char *message
    ) {
	proto_response_t *proto_response_local_var = malloc(sizeof(proto_response_t));
    if (!proto_response_local_var) {
        return NULL;
    }
	proto_response_local_var->code = code;
	proto_response_local_var->message = message;

	return proto_response_local_var;
}


void proto_response_free(proto_response_t *proto_response) {
    listEntry_t *listEntry;
    free(proto_response->message);
	free(proto_response);
}

cJSON *proto_response_convertToJSON(proto_response_t *proto_response) {
	cJSON *item = cJSON_CreateObject();

	// proto_response->code
    
    cJSON *code_enum_local_JSON = rpc_code_convertToJSON(proto_response->code);
    if(code_enum_local_JSON == NULL) {
    goto fail; // enum
    }
    cJSON_AddItemToObject(item, "code", code_enum_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    


	// proto_response->message
    if(proto_response->message) { 
    if(cJSON_AddStringToObject(item, "message", proto_response->message) == NULL) {
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

proto_response_t *proto_response_parseFromJSON(cJSON *proto_responseJSON){

    proto_response_t *proto_response_local_var = NULL;

    // proto_response->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(proto_responseJSON, "code");
    rpc_code_e code_local_nonprim_enum;
    if (code) { 
    code_local_nonprim_enum = rpc_code_parseFromJSON(code); //enum model
    }

    // proto_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(proto_responseJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }


    proto_response_local_var = proto_response_create (
        code ? code_local_nonprim_enum : -1,
        message ? strdup(message->valuestring) : NULL
        );

    return proto_response_local_var;
end:
    return NULL;

}
