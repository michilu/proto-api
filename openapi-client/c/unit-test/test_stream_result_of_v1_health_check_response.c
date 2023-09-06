#ifndef stream_result_of_v1_health_check_response_TEST
#define stream_result_of_v1_health_check_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define stream_result_of_v1_health_check_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/stream_result_of_v1_health_check_response.h"
stream_result_of_v1_health_check_response_t* instantiate_stream_result_of_v1_health_check_response(int include_optional);

#include "test_v1_health_check_response.c"
#include "test_rpc_status.c"


stream_result_of_v1_health_check_response_t* instantiate_stream_result_of_v1_health_check_response(int include_optional) {
  stream_result_of_v1_health_check_response_t* stream_result_of_v1_health_check_response = NULL;
  if (include_optional) {
    stream_result_of_v1_health_check_response = stream_result_of_v1_health_check_response_create(
       // false, not to have infinite recursion
      instantiate_v1_health_check_response(0),
       // false, not to have infinite recursion
      instantiate_rpc_status(0)
    );
  } else {
    stream_result_of_v1_health_check_response = stream_result_of_v1_health_check_response_create(
      NULL,
      NULL
    );
  }

  return stream_result_of_v1_health_check_response;
}


#ifdef stream_result_of_v1_health_check_response_MAIN

void test_stream_result_of_v1_health_check_response(int include_optional) {
    stream_result_of_v1_health_check_response_t* stream_result_of_v1_health_check_response_1 = instantiate_stream_result_of_v1_health_check_response(include_optional);

	cJSON* jsonstream_result_of_v1_health_check_response_1 = stream_result_of_v1_health_check_response_convertToJSON(stream_result_of_v1_health_check_response_1);
	printf("stream_result_of_v1_health_check_response :\n%s\n", cJSON_Print(jsonstream_result_of_v1_health_check_response_1));
	stream_result_of_v1_health_check_response_t* stream_result_of_v1_health_check_response_2 = stream_result_of_v1_health_check_response_parseFromJSON(jsonstream_result_of_v1_health_check_response_1);
	cJSON* jsonstream_result_of_v1_health_check_response_2 = stream_result_of_v1_health_check_response_convertToJSON(stream_result_of_v1_health_check_response_2);
	printf("repeating stream_result_of_v1_health_check_response:\n%s\n", cJSON_Print(jsonstream_result_of_v1_health_check_response_2));
}

int main() {
  test_stream_result_of_v1_health_check_response(1);
  test_stream_result_of_v1_health_check_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // stream_result_of_v1_health_check_response_MAIN
#endif // stream_result_of_v1_health_check_response_TEST
