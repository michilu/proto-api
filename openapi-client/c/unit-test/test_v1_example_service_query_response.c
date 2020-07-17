#ifndef v1_example_service_query_response_TEST
#define v1_example_service_query_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_example_service_query_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_example_service_query_response.h"
v1_example_service_query_response_t* instantiate_v1_example_service_query_response(int include_optional);

#include "test_protov1_response.c"


v1_example_service_query_response_t* instantiate_v1_example_service_query_response(int include_optional) {
  v1_example_service_query_response_t* v1_example_service_query_response = NULL;
  if (include_optional) {
    v1_example_service_query_response = v1_example_service_query_response_create(
       // false, not to have infinite recursion
      instantiate_protov1_response(0)
    );
  } else {
    v1_example_service_query_response = v1_example_service_query_response_create(
      NULL
    );
  }

  return v1_example_service_query_response;
}


#ifdef v1_example_service_query_response_MAIN

void test_v1_example_service_query_response(int include_optional) {
    v1_example_service_query_response_t* v1_example_service_query_response_1 = instantiate_v1_example_service_query_response(include_optional);

	cJSON* jsonv1_example_service_query_response_1 = v1_example_service_query_response_convertToJSON(v1_example_service_query_response_1);
	printf("v1_example_service_query_response :\n%s\n", cJSON_Print(jsonv1_example_service_query_response_1));
	v1_example_service_query_response_t* v1_example_service_query_response_2 = v1_example_service_query_response_parseFromJSON(jsonv1_example_service_query_response_1);
	cJSON* jsonv1_example_service_query_response_2 = v1_example_service_query_response_convertToJSON(v1_example_service_query_response_2);
	printf("repeating v1_example_service_query_response:\n%s\n", cJSON_Print(jsonv1_example_service_query_response_2));
}

int main() {
  test_v1_example_service_query_response(1);
  test_v1_example_service_query_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_example_service_query_response_MAIN
#endif // v1_example_service_query_response_TEST
