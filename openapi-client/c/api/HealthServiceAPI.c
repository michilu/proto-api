#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "HealthServiceAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


v1_check_response_t*
HealthServiceAPI_healthServiceCheck(apiClient_t *apiClient, char * service )
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/healthCheck")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/healthCheck");




    // query parameters
    char *keyQuery_service = NULL;
    char * valueQuery_service = NULL;
    keyValuePair_t *keyPairQuery_service = 0;
    if (service)
    {
        keyQuery_service = strdup("service");
        valueQuery_service = strdup((service));
        keyPairQuery_service = keyValuePair_create(keyQuery_service, valueQuery_service);
        list_addElement(localVarQueryParameters,keyPairQuery_service);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A successful response.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 0) {
    //    printf("%s\n","An unexpected error response.");
    //}
    //nonprimitive not container
    cJSON *HealthServiceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    v1_check_response_t *elementToReturn = v1_check_response_parseFromJSON(HealthServiceAPIlocalVarJSON);
    cJSON_Delete(HealthServiceAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_service){
        free(keyQuery_service);
        keyQuery_service = NULL;
    }
    if(valueQuery_service){
        free(valueQuery_service);
        valueQuery_service = NULL;
    }
    if(keyPairQuery_service){
        keyValuePair_free(keyPairQuery_service);
        keyPairQuery_service = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

