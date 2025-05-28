//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_serving_status.g.dart';

class V1ServingStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SERVING_STATUS_UNKNOWN_UNSPECIFIED')
  static const V1ServingStatus SERVING_STATUS_UNKNOWN_UNSPECIFIED = _$SERVING_STATUS_UNKNOWN_UNSPECIFIED;
  @BuiltValueEnumConst(wireName: r'SERVING_STATUS_SERVING')
  static const V1ServingStatus SERVING_STATUS_SERVING = _$SERVING_STATUS_SERVING;
  @BuiltValueEnumConst(wireName: r'SERVING_STATUS_NOT_SERVING')
  static const V1ServingStatus SERVING_STATUS_NOT_SERVING = _$SERVING_STATUS_NOT_SERVING;

  static Serializer<V1ServingStatus> get serializer => _$v1ServingStatusSerializer;

  const V1ServingStatus._(String name): super(name);

  static BuiltSet<V1ServingStatus> get values => _$values;
  static V1ServingStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class V1ServingStatusMixin = Object with _$V1ServingStatusMixin;

