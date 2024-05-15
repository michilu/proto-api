import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthServiceApi
void main() {
  final instance = Openapi().getHealthServiceApi();

  group(HealthServiceApi, () {
    //Future<V1CheckResponse> healthServiceCheck(String service) async
    test('test healthServiceCheck', () async {
      // TODO
    });

  });
}
