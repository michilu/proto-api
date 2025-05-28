#ifndef v1_serving_status_TEST
#define v1_serving_status_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define v1_serving_status_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/v1_serving_status.h"
v1_serving_status_t* instantiate_v1_serving_status(int include_optional);



v1_serving_status_t* instantiate_v1_serving_status(int include_optional) {
  v1_serving_status_t* v1_serving_status = NULL;
  if (include_optional) {
    v1_serving_status = v1_serving_status_create(
    );
  } else {
    v1_serving_status = v1_serving_status_create(
    );
  }

  return v1_serving_status;
}


#ifdef v1_serving_status_MAIN

void test_v1_serving_status(int include_optional) {
    v1_serving_status_t* v1_serving_status_1 = instantiate_v1_serving_status(include_optional);

	cJSON* jsonv1_serving_status_1 = v1_serving_status_convertToJSON(v1_serving_status_1);
	printf("v1_serving_status :\n%s\n", cJSON_Print(jsonv1_serving_status_1));
	v1_serving_status_t* v1_serving_status_2 = v1_serving_status_parseFromJSON(jsonv1_serving_status_1);
	cJSON* jsonv1_serving_status_2 = v1_serving_status_convertToJSON(v1_serving_status_2);
	printf("repeating v1_serving_status:\n%s\n", cJSON_Print(jsonv1_serving_status_2));
}

int main() {
  test_v1_serving_status(1);
  test_v1_serving_status(0);

  printf("Hello world \n");
  return 0;
}

#endif // v1_serving_status_MAIN
#endif // v1_serving_status_TEST
