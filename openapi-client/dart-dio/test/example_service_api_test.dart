import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ExampleServiceApi
void main() {
  final instance = Openapi().getExampleServiceApi();

  group(ExampleServiceApi, () {
    //Future<V1ExampleServiceQueryResponse> exampleServiceQuery(String id, JsonObject body) async
    test('test exampleServiceQuery', () async {
      // TODO
    });

  });
}
