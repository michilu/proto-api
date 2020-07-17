#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "protov1_response.h"


char* codeprotov1_response_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__e code) {
    char* codeArray[] =  { "NULL", "OK", "CANCELLED", "UNKNOWN", "INVALID_ARGUMENT", "DEADLINE_EXCEEDED", "NOT_FOUND", "ALREADY_EXISTS", "PERMISSION_DENIED", "UNAUTHENTICATED", "RESOURCE_EXHAUSTED", "FAILED_PRECONDITION", "ABORTED", "OUT_OF_RANGE", "UNIMPLEMENTED", "INTERNAL", "UNAVAILABLE", "DATA_LOSS" };
	return codeArray[code];
}

an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__e codeprotov1_response_FromString(char* code){
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

protov1_response_t *protov1_response_create(
    char *message
    ) {
    protov1_response_t *protov1_response_local_var = malloc(sizeof(protov1_response_t));
    if (!protov1_response_local_var) {
        return NULL;
    }
    protov1_response_local_var->code = code;
    protov1_response_local_var->message = message;

    return protov1_response_local_var;
}


void protov1_response_free(protov1_response_t *protov1_response) {
    if(NULL == protov1_response){
        return ;
    }
    listEntry_t *listEntry;
    free(protov1_response->message);
    free(protov1_response);
}

cJSON *protov1_response_convertToJSON(protov1_response_t *protov1_response) {
    cJSON *item = cJSON_CreateObject();

    // protov1_response->code
    
    


    // protov1_response->message
    if(protov1_response->message) { 
    if(cJSON_AddStringToObject(item, "message", protov1_response->message) == NULL) {
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

protov1_response_t *protov1_response_parseFromJSON(cJSON *protov1_responseJSON){

    protov1_response_t *protov1_response_local_var = NULL;

    // protov1_response->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(protov1_responseJSON, "code");
    }

    // protov1_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(protov1_responseJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message))
    {
    goto end; //String
    }
    }


    protov1_response_local_var = protov1_response_create (
        message ? strdup(message->valuestring) : NULL
        );

    return protov1_response_local_var;
end:
    return NULL;

}
