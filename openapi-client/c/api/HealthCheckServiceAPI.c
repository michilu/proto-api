#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "HealthCheckServiceAPI.h"


#define MAX_BUFFER_LENGTH 4096
#define intToStr(dst, src) \
    do {\
    char dst[256];\
    snprintf(dst, 256, "%ld", (long int)(src));\
}while(0)


v1_health_check_service_health_check_response_t*
HealthCheckServiceAPI_healthCheckServiceHealthCheck(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_create();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;

    // create the path
    long sizeOfPath = strlen("/healthCheck")+1;
    char *localVarPath = malloc(sizeOfPath);
    snprintf(localVarPath, sizeOfPath, "/healthCheck");



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

    if (apiClient->response_code == 200) {
        printf("%s\n","A successful response.");
    }
    if (apiClient->response_code == 0) {
        printf("%s\n","An unexpected error response");
    }
    //nonprimitive not container
    cJSON *HealthCheckServiceAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
    v1_health_check_service_health_check_response_t *elementToReturn = v1_health_check_service_health_check_response_parseFromJSON(HealthCheckServiceAPIlocalVarJSON);
    cJSON_Delete(HealthCheckServiceAPIlocalVarJSON);
    if(elementToReturn == NULL) {
        // return 0;
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_free(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    return NULL;

}

