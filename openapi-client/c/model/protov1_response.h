/*
 * protov1_response.h
 *
 * 
 */

#ifndef _protov1_response_H_
#define _protov1_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct protov1_response_t protov1_response_t;

#include "rpc_code.h"

// Enum  for protov1_response

typedef enum  { an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__NULL = 0, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__OK, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__CANCELLED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__UNKNOWN, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__INVALID_ARGUMENT, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__DEADLINE_EXCEEDED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__NOT_FOUND, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__ALREADY_EXISTS, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__PERMISSION_DENIED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__UNAUTHENTICATED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__RESOURCE_EXHAUSTED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__FAILED_PRECONDITION, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__ABORTED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__OUT_OF_RANGE, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__UNIMPLEMENTED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__INTERNAL, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__UNAVAILABLE, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__DATA_LOSS } an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__e;

char* protov1_response_code_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__e code);

an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__e protov1_response_code_FromString(char* code);



typedef struct protov1_response_t {
    rpc_code_t *code; // custom
    list_t *details; //primitive container
    char *message; // string

} protov1_response_t;

protov1_response_t *protov1_response_create(
    rpc_code_t *code,
    list_t *details,
    char *message
);

void protov1_response_free(protov1_response_t *protov1_response);

protov1_response_t *protov1_response_parseFromJSON(cJSON *protov1_responseJSON);

cJSON *protov1_response_convertToJSON(protov1_response_t *protov1_response);

#endif /* _protov1_response_H_ */

