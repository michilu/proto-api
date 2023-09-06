import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthApi
void main() {
  final instance = Openapi().getHealthApi();

  group(HealthApi, () {
    //Future<V1HealthCheckResponse> healthCheck({ String service }) async
    test('test healthCheck', () async {
      // TODO
    });

    //Future<StreamResultOfV1HealthCheckResponse> healthWatch({ String service }) async
    test('test healthWatch', () async {
      // TODO
    });

  });
}
