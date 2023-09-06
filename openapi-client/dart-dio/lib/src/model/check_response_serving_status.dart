//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_response_serving_status.g.dart';

class CheckResponseServingStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SERVING_STATUS_UNKNOWN_UNSPECIFIED')
  static const CheckResponseServingStatus UNKNOWN_UNSPECIFIED = _$UNKNOWN_UNSPECIFIED;
  @BuiltValueEnumConst(wireName: r'SERVING_STATUS_SERVING')
  static const CheckResponseServingStatus SERVING = _$SERVING;
  @BuiltValueEnumConst(wireName: r'SERVING_STATUS_NOT_SERVING')
  static const CheckResponseServingStatus NOT_SERVING = _$NOT_SERVING;

  static Serializer<CheckResponseServingStatus> get serializer => _$checkResponseServingStatusSerializer;

  const CheckResponseServingStatus._(String name): super(name);

  static BuiltSet<CheckResponseServingStatus> get values => _$values;
  static CheckResponseServingStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CheckResponseServingStatusMixin = Object with _$CheckResponseServingStatusMixin;

