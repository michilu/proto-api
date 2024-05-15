#ifndef protov1_status_TEST
#define protov1_status_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define protov1_status_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/protov1_status.h"
protov1_status_t* instantiate_protov1_status(int include_optional);



protov1_status_t* instantiate_protov1_status(int include_optional) {
  protov1_status_t* protov1_status = NULL;
  if (include_optional) {
    protov1_status = protov1_status_create(
      "0",
      56,
      "0",
      "0",
      "0",
      list_createList(),
      an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__"OK"
    );
  } else {
    protov1_status = protov1_status_create(
      "0",
      56,
      "0",
      "0",
      "0",
      list_createList(),
      an_example_of_generating_swagger_via_grpc_ecosystem__protov1_status__"OK"
    );
  }

  return protov1_status;
}


#ifdef protov1_status_MAIN

void test_protov1_status(int include_optional) {
    protov1_status_t* protov1_status_1 = instantiate_protov1_status(include_optional);

	cJSON* jsonprotov1_status_1 = protov1_status_convertToJSON(protov1_status_1);
	printf("protov1_status :\n%s\n", cJSON_Print(jsonprotov1_status_1));
	protov1_status_t* protov1_status_2 = protov1_status_parseFromJSON(jsonprotov1_status_1);
	cJSON* jsonprotov1_status_2 = protov1_status_convertToJSON(protov1_status_2);
	printf("repeating protov1_status:\n%s\n", cJSON_Print(jsonprotov1_status_2));
}

int main() {
  test_protov1_status(1);
  test_protov1_status(0);

  printf("Hello world \n");
  return 0;
}

#endif // protov1_status_MAIN
#endif // protov1_status_TEST
