#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "HealthServiceAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096


v1_check_response_t*
HealthServiceAPI_healthServiceCheck(apiClient_t *apiClient, char *servingName)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/v1/healthCheck");





    // query parameters
    char *keyQuery_servingName = NULL;
    char * valueQuery_servingName = NULL;
    keyValuePair_t *keyPairQuery_servingName = 0;
    if (servingName)
    {
        keyQuery_servingName = strdup("servingName");
        valueQuery_servingName = strdup((servingName));
        keyPairQuery_servingName = keyValuePair_create(keyQuery_servingName, valueQuery_servingName);
        list_addElement(localVarQueryParameters,keyPairQuery_servingName);
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
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A successful response.");
    //}
    //nonprimitive not container
    v1_check_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *HealthServiceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = v1_check_response_parseFromJSON(HealthServiceAPIlocalVarJSON);
        cJSON_Delete(HealthServiceAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
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
    if(keyQuery_servingName){
        free(keyQuery_servingName);
        keyQuery_servingName = NULL;
    }
    if(valueQuery_servingName){
        free(valueQuery_servingName);
        valueQuery_servingName = NULL;
    }
    if(keyPairQuery_servingName){
        keyValuePair_free(keyPairQuery_servingName);
        keyPairQuery_servingName = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

