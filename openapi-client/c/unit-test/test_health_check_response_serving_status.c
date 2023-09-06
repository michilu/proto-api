#ifndef health_check_response_serving_status_TEST
#define health_check_response_serving_status_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define health_check_response_serving_status_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/health_check_response_serving_status.h"
health_check_response_serving_status_t* instantiate_health_check_response_serving_status(int include_optional);



health_check_response_serving_status_t* instantiate_health_check_response_serving_status(int include_optional) {
  health_check_response_serving_status_t* health_check_response_serving_status = NULL;
  if (include_optional) {
    health_check_response_serving_status = health_check_response_serving_status_create(
    );
  } else {
    health_check_response_serving_status = health_check_response_serving_status_create(
    );
  }

  return health_check_response_serving_status;
}


#ifdef health_check_response_serving_status_MAIN

void test_health_check_response_serving_status(int include_optional) {
    health_check_response_serving_status_t* health_check_response_serving_status_1 = instantiate_health_check_response_serving_status(include_optional);

	cJSON* jsonhealth_check_response_serving_status_1 = health_check_response_serving_status_convertToJSON(health_check_response_serving_status_1);
	printf("health_check_response_serving_status :\n%s\n", cJSON_Print(jsonhealth_check_response_serving_status_1));
	health_check_response_serving_status_t* health_check_response_serving_status_2 = health_check_response_serving_status_parseFromJSON(jsonhealth_check_response_serving_status_1);
	cJSON* jsonhealth_check_response_serving_status_2 = health_check_response_serving_status_convertToJSON(health_check_response_serving_status_2);
	printf("repeating health_check_response_serving_status:\n%s\n", cJSON_Print(jsonhealth_check_response_serving_status_2));
}

int main() {
  test_health_check_response_serving_status(1);
  test_health_check_response_serving_status(0);

  printf("Hello world \n");
  return 0;
}

#endif // health_check_response_serving_status_MAIN
#endif // health_check_response_serving_status_TEST
