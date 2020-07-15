#ifndef rpc_code_TEST
#define rpc_code_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define rpc_code_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/rpc_code.h"
rpc_code_t* instantiate_rpc_code(int include_optional);



rpc_code_t* instantiate_rpc_code(int include_optional) {
  rpc_code_t* rpc_code = NULL;
  if (include_optional) {
    rpc_code = rpc_code_create(
    );
  } else {
    rpc_code = rpc_code_create(
    );
  }

  return rpc_code;
}


#ifdef rpc_code_MAIN

void test_rpc_code(int include_optional) {
    rpc_code_t* rpc_code_1 = instantiate_rpc_code(include_optional);

	cJSON* jsonrpc_code_1 = rpc_code_convertToJSON(rpc_code_1);
	printf("rpc_code :\n%s\n", cJSON_Print(jsonrpc_code_1));
	rpc_code_t* rpc_code_2 = rpc_code_parseFromJSON(jsonrpc_code_1);
	cJSON* jsonrpc_code_2 = rpc_code_convertToJSON(rpc_code_2);
	printf("repeating rpc_code:\n%s\n", cJSON_Print(jsonrpc_code_2));
}

int main() {
  test_rpc_code(1);
  test_rpc_code(0);

  printf("Hello world \n");
  return 0;
}

#endif // rpc_code_MAIN
#endif // rpc_code_TEST
