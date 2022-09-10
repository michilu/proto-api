import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ExampleServiceApi
void main() {
  final instance = Openapi().getExampleServiceApi();

  group(ExampleServiceApi, () {
    //Future<V1ExampleServiceQueryResponse> query(String id, V1ExampleServiceQueryRequest body) async
    test('test query', () async {
      // TODO
    });

  });
}
