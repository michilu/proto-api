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



typedef struct protov1_status_t {
    char *type; // string
    int status; //numeric
    char *title; // string
    char *detail; // string
    char *instance; // string
    list_t *extensions; //primitive container
    an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e code; //referenced enum

    int _library_owned; // Is the library responsible for freeing this object?
} protov1_status_t;

__attribute__((deprecated)) protov1_status_t *protov1_status_create(
    char *type,
    int status,
    char *title,
    char *detail,
    char *instance,
    list_t *extensions,
    an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e code
);

void protov1_status_free(protov1_status_t *protov1_status);

protov1_status_t *protov1_status_parseFromJSON(cJSON *protov1_statusJSON);

cJSON *protov1_status_convertToJSON(protov1_status_t *protov1_status);

#endif /* _protov1_status_H_ */

