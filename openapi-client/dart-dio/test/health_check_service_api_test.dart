import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthCheckServiceApi
void main() {
  final instance = Openapi().getHealthCheckServiceApi();

  group(HealthCheckServiceApi, () {
    //Future<V1HealthCheckServiceHealthCheckResponse> healthCheck() async
    test('test healthCheck', () async {
      // TODO
    });

  });
}
