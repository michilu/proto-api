#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "proto_response.h"


char* codeproto_response_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__proto_response__e code) {
    char* codeArray[] =  { "NULL", "OK", "CANCELLED", "UNKNOWN", "INVALID_ARGUMENT", "DEADLINE_EXCEEDED", "NOT_FOUND", "ALREADY_EXISTS", "PERMISSION_DENIED", "UNAUTHENTICATED", "RESOURCE_EXHAUSTED", "FAILED_PRECONDITION", "ABORTED", "OUT_OF_RANGE", "UNIMPLEMENTED", "INTERNAL", "UNAVAILABLE", "DATA_LOSS" };
	return codeArray[code];
}

an_example_of_generating_swagger_via_grpc_ecosystem__proto_response__e codeproto_response_FromString(char* code){
    int stringToReturn = 0;
    char *codeArray[] =  { "NULL", "OK", "CANCELLED", "UNKNOWN", "INVALID_ARGUMENT", "DEADLINE_EXCEEDED", "NOT_FOUND", "ALREADY_EXISTS", "PERMISSION_DENIED", "UNAUTHENTICATED", "RESOURCE_EXHAUSTED", "FAILED_PRECONDITION", "ABORTED", "OUT_OF_RANGE", "UNIMPLEMENTED", "INTERNAL", "UNAVAILABLE", "DATA_LOSS" };
    size_t sizeofArray = sizeof(codeArray) / sizeof(codeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(code, codeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

proto_response_t *proto_response_create(
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
    if(NULL == proto_response){
        return ;
    }
    listEntry_t *listEntry;
    free(proto_response->message);
    free(proto_response);
}

cJSON *proto_response_convertToJSON(proto_response_t *proto_response) {
    cJSON *item = cJSON_CreateObject();

    // proto_response->code
    
    


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
        message ? strdup(message->valuestring) : NULL
        );

    return proto_response_local_var;
end:
    return NULL;

}
