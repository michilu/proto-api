#ifndef proto_request_TEST
#define proto_request_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define proto_request_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/proto_request.h"
proto_request_t* instantiate_proto_request(int include_optional);



proto_request_t* instantiate_proto_request(int include_optional) {
  proto_request_t* proto_request = NULL;
  if (include_optional) {
    proto_request = proto_request_create(
      "a"
    );
  } else {
    proto_request = proto_request_create(
      "a"
    );
  }

  return proto_request;
}


#ifdef proto_request_MAIN

void test_proto_request(int include_optional) {
    proto_request_t* proto_request_1 = instantiate_proto_request(include_optional);

	cJSON* jsonproto_request_1 = proto_request_convertToJSON(proto_request_1);
	printf("proto_request :\n%s\n", cJSON_Print(jsonproto_request_1));
	proto_request_t* proto_request_2 = proto_request_parseFromJSON(jsonproto_request_1);
	cJSON* jsonproto_request_2 = proto_request_convertToJSON(proto_request_2);
	printf("repeating proto_request:\n%s\n", cJSON_Print(jsonproto_request_2));
}

int main() {
  test_proto_request(1);
  test_proto_request(0);

  printf("Hello world \n");
  return 0;
}

#endif // proto_request_MAIN
#endif // proto_request_TEST
