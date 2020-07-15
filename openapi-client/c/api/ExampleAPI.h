#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/proto_request.h"
#include "../model/proto_response.h"


proto_response_t*
ExampleAPI_query(apiClient_t *apiClient, char * id , proto_request_t * body );


