#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "gateway_health_check_response.h"



gateway_health_check_response_t *gateway_health_check_response_create(
    int ok
    ) {
	gateway_health_check_response_t *gateway_health_check_response_local_var = malloc(sizeof(gateway_health_check_response_t));
    if (!gateway_health_check_response_local_var) {
        return NULL;
    }
	gateway_health_check_response_local_var->ok = ok;

	return gateway_health_check_response_local_var;
}


void gateway_health_check_response_free(gateway_health_check_response_t *gateway_health_check_response) {
    listEntry_t *listEntry;
	free(gateway_health_check_response);
}

cJSON *gateway_health_check_response_convertToJSON(gateway_health_check_response_t *gateway_health_check_response) {
	cJSON *item = cJSON_CreateObject();

	// gateway_health_check_response->ok
    if(gateway_health_check_response->ok) { 
    if(cJSON_AddBoolToObject(item, "ok", gateway_health_check_response->ok) == NULL) {
    goto fail; //Bool
    }
     } 

	return item;
fail:
	if (item) {
        cJSON_Delete(item);
    }
	return NULL;
}

gateway_health_check_response_t *gateway_health_check_response_parseFromJSON(cJSON *gateway_health_check_responseJSON){

    gateway_health_check_response_t *gateway_health_check_response_local_var = NULL;

    // gateway_health_check_response->ok
    cJSON *ok = cJSON_GetObjectItemCaseSensitive(gateway_health_check_responseJSON, "ok");
    if (ok) { 
    if(!cJSON_IsBool(ok))
    {
    goto end; //Bool
    }
    }


    gateway_health_check_response_local_var = gateway_health_check_response_create (
        ok ? ok->valueint : 0
        );

    return gateway_health_check_response_local_var;
end:
    return NULL;

}
