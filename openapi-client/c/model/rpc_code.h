/*
 * rpc_code.h
 *
 * 
 */

#ifndef _rpc_code_H_
#define _rpc_code_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rpc_code_t rpc_code_t;


// Enum  for rpc_code

typedef enum { an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__NULL = 0, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__OK, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__CANCELLED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__UNKNOWN, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__INVALID_ARGUMENT, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__DEADLINE_EXCEEDED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__NOT_FOUND, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__ALREADY_EXISTS, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__PERMISSION_DENIED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__UNAUTHENTICATED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__RESOURCE_EXHAUSTED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__FAILED_PRECONDITION, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__ABORTED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__OUT_OF_RANGE, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__UNIMPLEMENTED, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__INTERNAL, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__UNAVAILABLE, an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__DATA_LOSS } an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e;

char* rpc_code_rpc_code_ToString(an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code);

an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code_rpc_code_FromString(char* rpc_code);

//cJSON *rpc_code_rpc_code_convertToJSON(an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code);

//an_example_of_generating_swagger_via_grpc_ecosystem__rpc_code__e rpc_code_rpc_code_parseFromJSON(cJSON *rpc_codeJSON);

#endif /* _rpc_code_H_ */

