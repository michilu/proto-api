#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rpc_code.h"


char* rpc_code_rpc_code_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code) {
    char *rpc_codeArray[] =  { "NULL", "OK", "CANCELLED", "UNKNOWN", "INVALID_ARGUMENT", "DEADLINE_EXCEEDED", "NOT_FOUND", "ALREADY_EXISTS", "PERMISSION_DENIED", "UNAUTHENTICATED", "RESOURCE_EXHAUSTED", "FAILED_PRECONDITION", "ABORTED", "OUT_OF_RANGE", "UNIMPLEMENTED", "INTERNAL", "UNAVAILABLE", "DATA_LOSS" };
    return rpc_codeArray[rpc_code];
}

an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code_rpc_code_FromString(char* rpc_code) {
    int stringToReturn = 0;
    char *rpc_codeArray[] =  { "NULL", "OK", "CANCELLED", "UNKNOWN", "INVALID_ARGUMENT", "DEADLINE_EXCEEDED", "NOT_FOUND", "ALREADY_EXISTS", "PERMISSION_DENIED", "UNAUTHENTICATED", "RESOURCE_EXHAUSTED", "FAILED_PRECONDITION", "ABORTED", "OUT_OF_RANGE", "UNIMPLEMENTED", "INTERNAL", "UNAVAILABLE", "DATA_LOSS" };
    size_t sizeofArray = sizeof(rpc_codeArray) / sizeof(rpc_codeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(rpc_code, rpc_codeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *rpc_code_rpc_code_convertToJSON(an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "rpc_code", rpc_code_rpc_code_ToString(rpc_code)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

rpc_code_rpc_code_e rpc_code_rpc_code_parseFromJSON(cJSON *rpc_codeJSON) {
    rpc_code_rpc_code_e *rpc_code = NULL;
    rpc_code_rpc_code_e rpc_codeVariable;
    cJSON *rpc_codeVar = cJSON_GetObjectItemCaseSensitive(rpc_codeJSON, "rpc_code");
    if(!cJSON_IsString(rpc_codeVar) || (rpc_codeVar->valuestring == NULL)){
        goto end;
    }
    rpc_codeVariable = rpc_code_rpc_code_FromString(rpc_codeVar->valuestring);
    return rpc_codeVariable;
end:
    return 0;
}
