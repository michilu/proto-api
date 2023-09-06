#ifndef check_response_serving_status_TEST
#define check_response_serving_status_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define check_response_serving_status_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/check_response_serving_status.h"
check_response_serving_status_t* instantiate_check_response_serving_status(int include_optional);



check_response_serving_status_t* instantiate_check_response_serving_status(int include_optional) {
  check_response_serving_status_t* check_response_serving_status = NULL;
  if (include_optional) {
    check_response_serving_status = check_response_serving_status_create(
    );
  } else {
    check_response_serving_status = check_response_serving_status_create(
    );
  }

  return check_response_serving_status;
}


#ifdef check_response_serving_status_MAIN

void test_check_response_serving_status(int include_optional) {
    check_response_serving_status_t* check_response_serving_status_1 = instantiate_check_response_serving_status(include_optional);

	cJSON* jsoncheck_response_serving_status_1 = check_response_serving_status_convertToJSON(check_response_serving_status_1);
	printf("check_response_serving_status :\n%s\n", cJSON_Print(jsoncheck_response_serving_status_1));
	check_response_serving_status_t* check_response_serving_status_2 = check_response_serving_status_parseFromJSON(jsoncheck_response_serving_status_1);
	cJSON* jsoncheck_response_serving_status_2 = check_response_serving_status_convertToJSON(check_response_serving_status_2);
	printf("repeating check_response_serving_status:\n%s\n", cJSON_Print(jsoncheck_response_serving_status_2));
}

int main() {
  test_check_response_serving_status(1);
  test_check_response_serving_status(0);

  printf("Hello world \n");
  return 0;
}

#endif // check_response_serving_status_MAIN
#endif // check_response_serving_status_TEST
