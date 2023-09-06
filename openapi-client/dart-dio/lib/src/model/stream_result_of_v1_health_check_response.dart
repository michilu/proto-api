//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/v1_health_check_response.dart';
import 'package:openapi/src/model/rpc_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stream_result_of_v1_health_check_response.g.dart';

/// StreamResultOfV1HealthCheckResponse
///
/// Properties:
/// * [result] 
/// * [error] 
@BuiltValue()
abstract class StreamResultOfV1HealthCheckResponse implements Built<StreamResultOfV1HealthCheckResponse, StreamResultOfV1HealthCheckResponseBuilder> {
  @BuiltValueField(wireName: r'result')
  V1HealthCheckResponse? get result;

  @BuiltValueField(wireName: r'error')
  RpcStatus? get error;

  StreamResultOfV1HealthCheckResponse._();

  factory StreamResultOfV1HealthCheckResponse([void updates(StreamResultOfV1HealthCheckResponseBuilder b)]) = _$StreamResultOfV1HealthCheckResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamResultOfV1HealthCheckResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamResultOfV1HealthCheckResponse> get serializer => _$StreamResultOfV1HealthCheckResponseSerializer();
}

class _$StreamResultOfV1HealthCheckResponseSerializer implements PrimitiveSerializer<StreamResultOfV1HealthCheckResponse> {
  @override
  final Iterable<Type> types = const [StreamResultOfV1HealthCheckResponse, _$StreamResultOfV1HealthCheckResponse];

  @override
  final String wireName = r'StreamResultOfV1HealthCheckResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamResultOfV1HealthCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(V1HealthCheckResponse),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(RpcStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StreamResultOfV1HealthCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StreamResultOfV1HealthCheckResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V1HealthCheckResponse),
          ) as V1HealthCheckResponse;
          result.result.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RpcStatus),
          ) as RpcStatus;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StreamResultOfV1HealthCheckResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamResultOfV1HealthCheckResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

