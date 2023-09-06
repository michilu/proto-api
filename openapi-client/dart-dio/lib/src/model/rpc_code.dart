//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rpc_code.g.dart';

class RpcCode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OK')
  static const RpcCode OK = _$OK;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const RpcCode CANCELLED = _$CANCELLED;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const RpcCode UNKNOWN = _$UNKNOWN;
  @BuiltValueEnumConst(wireName: r'INVALID_ARGUMENT')
  static const RpcCode INVALID_ARGUMENT = _$INVALID_ARGUMENT;
  @BuiltValueEnumConst(wireName: r'DEADLINE_EXCEEDED')
  static const RpcCode DEADLINE_EXCEEDED = _$DEADLINE_EXCEEDED;
  @BuiltValueEnumConst(wireName: r'NOT_FOUND')
  static const RpcCode NOT_FOUND = _$NOT_FOUND;
  @BuiltValueEnumConst(wireName: r'ALREADY_EXISTS')
  static const RpcCode ALREADY_EXISTS = _$ALREADY_EXISTS;
  @BuiltValueEnumConst(wireName: r'PERMISSION_DENIED')
  static const RpcCode PERMISSION_DENIED = _$PERMISSION_DENIED;
  @BuiltValueEnumConst(wireName: r'UNAUTHENTICATED')
  static const RpcCode UNAUTHENTICATED = _$UNAUTHENTICATED;
  @BuiltValueEnumConst(wireName: r'RESOURCE_EXHAUSTED')
  static const RpcCode RESOURCE_EXHAUSTED = _$RESOURCE_EXHAUSTED;
  @BuiltValueEnumConst(wireName: r'FAILED_PRECONDITION')
  static const RpcCode FAILED_PRECONDITION = _$FAILED_PRECONDITION;
  @BuiltValueEnumConst(wireName: r'ABORTED')
  static const RpcCode ABORTED = _$ABORTED;
  @BuiltValueEnumConst(wireName: r'OUT_OF_RANGE')
  static const RpcCode OUT_OF_RANGE = _$OUT_OF_RANGE;
  @BuiltValueEnumConst(wireName: r'UNIMPLEMENTED')
  static const RpcCode UNIMPLEMENTED = _$UNIMPLEMENTED;
  @BuiltValueEnumConst(wireName: r'INTERNAL')
  static const RpcCode INTERNAL = _$INTERNAL;
  @BuiltValueEnumConst(wireName: r'UNAVAILABLE')
  static const RpcCode UNAVAILABLE = _$UNAVAILABLE;
  @BuiltValueEnumConst(wireName: r'DATA_LOSS')
  static const RpcCode DATA_LOSS = _$DATA_LOSS;

  static Serializer<RpcCode> get serializer => _$rpcCodeSerializer;

  const RpcCode._(String name): super(name);

  static BuiltSet<RpcCode> get values => _$values;
  static RpcCode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RpcCodeMixin = Object with _$RpcCodeMixin;

