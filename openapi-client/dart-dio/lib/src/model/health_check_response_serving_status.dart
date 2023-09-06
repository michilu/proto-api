//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_check_response_serving_status.g.dart';

class HealthCheckResponseServingStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const HealthCheckResponseServingStatus UNKNOWN = _$UNKNOWN;
  @BuiltValueEnumConst(wireName: r'SERVING')
  static const HealthCheckResponseServingStatus SERVING = _$SERVING;
  @BuiltValueEnumConst(wireName: r'NOT_SERVING')
  static const HealthCheckResponseServingStatus NOT_SERVING = _$NOT_SERVING;
  @BuiltValueEnumConst(wireName: r'SERVICE_UNKNOWN')
  static const HealthCheckResponseServingStatus SERVICE_UNKNOWN = _$SERVICE_UNKNOWN;

  static Serializer<HealthCheckResponseServingStatus> get serializer => _$healthCheckResponseServingStatusSerializer;

  const HealthCheckResponseServingStatus._(String name): super(name);

  static BuiltSet<HealthCheckResponseServingStatus> get values => _$values;
  static HealthCheckResponseServingStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class HealthCheckResponseServingStatusMixin = Object with _$HealthCheckResponseServingStatusMixin;

