#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/runtime_error.h"
#include "../model/v1_example_service_query_request.h"
#include "../model/v1_example_service_query_response.h"


v1_example_service_query_response_t*
ExampleServiceAPI_exampleServiceQuery(apiClient_t *apiClient, char * id , v1_example_service_query_request_t * body );


