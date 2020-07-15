#ifndef proto_response_TEST
#define proto_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define proto_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/proto_response.h"
proto_response_t* instantiate_proto_response(int include_optional);



proto_response_t* instantiate_proto_response(int include_optional) {
  proto_response_t* proto_response = NULL;
  if (include_optional) {
    proto_response = proto_response_create(
      an_example_of_generating_swagger_via_grpc_ecosystem__proto_response__"OK",
      "0"
    );
  } else {
    proto_response = proto_response_create(
      an_example_of_generating_swagger_via_grpc_ecosystem__proto_response__"OK",
      "0"
    );
  }

  return proto_response;
}


#ifdef proto_response_MAIN

void test_proto_response(int include_optional) {
    proto_response_t* proto_response_1 = instantiate_proto_response(include_optional);

	cJSON* jsonproto_response_1 = proto_response_convertToJSON(proto_response_1);
	printf("proto_response :\n%s\n", cJSON_Print(jsonproto_response_1));
	proto_response_t* proto_response_2 = proto_response_parseFromJSON(jsonproto_response_1);
	cJSON* jsonproto_response_2 = proto_response_convertToJSON(proto_response_2);
	printf("repeating proto_response:\n%s\n", cJSON_Print(jsonproto_response_2));
}

int main() {
  test_proto_response(1);
  test_proto_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // proto_response_MAIN
#endif // proto_response_TEST
