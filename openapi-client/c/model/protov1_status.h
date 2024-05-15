/*
 * protov1_status.h
 *
 * 
 */

#ifndef _protov1_status_H_
#define _protov1_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct protov1_status_t protov1_status_t;

#include "rpc_code.h"

// Enum  for protov1_status

typedef enum  { an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__NULL = 0, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__OK, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__CANCELLED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__UNKNOWN, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__INVALID_ARGUMENT, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__DEADLINE_EXCEEDED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__NOT_FOUND, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__ALREADY_EXISTS, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__PERMISSION_DENIED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__UNAUTHENTICATED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__RESOURCE_EXHAUSTED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__FAILED_PRECONDITION, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__ABORTED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__OUT_OF_RANGE, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__UNIMPLEMENTED, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__INTERNAL, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__UNAVAILABLE, an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__DATA_LOSS } an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__e;

char* protov1_status_code_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__e code);

an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__e protov1_status_code_FromString(char* code);



typedef struct protov1_status_t {
    char *type; // string
    int status; //numeric
    char *title; // string
    char *detail; // string
    char *instance; // string
    list_t *extensions; //primitive container
    rpc_code_t *code; // custom

} protov1_status_t;

protov1_status_t *protov1_status_create(
    char *type,
    int status,
    char *title,
    char *detail,
    char *instance,
    list_t *extensions,
    rpc_code_t *code
);

void protov1_status_free(protov1_status_t *protov1_status);

protov1_status_t *protov1_status_parseFromJSON(cJSON *protov1_statusJSON);

cJSON *protov1_status_convertToJSON(protov1_status_t *protov1_status);

#endif /* _protov1_status_H_ */

