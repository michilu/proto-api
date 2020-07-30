#ifndef runtime_error_TEST
#define runtime_error_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define runtime_error_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/runtime_error.h"
runtime_error_t* instantiate_runtime_error(int include_optional);



runtime_error_t* instantiate_runtime_error(int include_optional) {
  runtime_error_t* runtime_error = NULL;
  if (include_optional) {
    runtime_error = runtime_error_create(
      "0",
      56,
      "0",
      list_create()
    );
  } else {
    runtime_error = runtime_error_create(
      "0",
      56,
      "0",
      list_create()
    );
  }

  return runtime_error;
}


#ifdef runtime_error_MAIN

void test_runtime_error(int include_optional) {
    runtime_error_t* runtime_error_1 = instantiate_runtime_error(include_optional);

	cJSON* jsonruntime_error_1 = runtime_error_convertToJSON(runtime_error_1);
	printf("runtime_error :\n%s\n", cJSON_Print(jsonruntime_error_1));
	runtime_error_t* runtime_error_2 = runtime_error_parseFromJSON(jsonruntime_error_1);
	cJSON* jsonruntime_error_2 = runtime_error_convertToJSON(runtime_error_2);
	printf("repeating runtime_error:\n%s\n", cJSON_Print(jsonruntime_error_2));
}

int main() {
  test_runtime_error(1);
  test_runtime_error(0);

  printf("Hello world \n");
  return 0;
}

#endif // runtime_error_MAIN
#endif // runtime_error_TEST
