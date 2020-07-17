#ifndef protov1_response_TEST
#define protov1_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define protov1_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/protov1_response.h"
protov1_response_t* instantiate_protov1_response(int include_optional);



protov1_response_t* instantiate_protov1_response(int include_optional) {
  protov1_response_t* protov1_response = NULL;
  if (include_optional) {
    protov1_response = protov1_response_create(
      an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__"OK",
      "0"
    );
  } else {
    protov1_response = protov1_response_create(
      an_example_of_generating_swagger_via_grpc_ecosystem__protov1_response__"OK",
      "0"
    );
  }

  return protov1_response;
}


#ifdef protov1_response_MAIN

void test_protov1_response(int include_optional) {
    protov1_response_t* protov1_response_1 = instantiate_protov1_response(include_optional);

	cJSON* jsonprotov1_response_1 = protov1_response_convertToJSON(protov1_response_1);
	printf("protov1_response :\n%s\n", cJSON_Print(jsonprotov1_response_1));
	protov1_response_t* protov1_response_2 = protov1_response_parseFromJSON(jsonprotov1_response_1);
	cJSON* jsonprotov1_response_2 = protov1_response_convertToJSON(protov1_response_2);
	printf("repeating protov1_response:\n%s\n", cJSON_Print(jsonprotov1_response_2));
}

int main() {
  test_protov1_response(1);
  test_protov1_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // protov1_response_MAIN
#endif // protov1_response_TEST
