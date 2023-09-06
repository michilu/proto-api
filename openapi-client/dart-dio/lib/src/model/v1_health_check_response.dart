//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/health_check_response_serving_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_health_check_response.g.dart';

/// V1HealthCheckResponse
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class V1HealthCheckResponse implements Built<V1HealthCheckResponse, V1HealthCheckResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  HealthCheckResponseServingStatus? get status;
  // enum statusEnum {  UNKNOWN,  SERVING,  NOT_SERVING,  SERVICE_UNKNOWN,  };

  V1HealthCheckResponse._();

  factory V1HealthCheckResponse([void updates(V1HealthCheckResponseBuilder b)]) = _$V1HealthCheckResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1HealthCheckResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1HealthCheckResponse> get serializer => _$V1HealthCheckResponseSerializer();
}

class _$V1HealthCheckResponseSerializer implements PrimitiveSerializer<V1HealthCheckResponse> {
  @override
  final Iterable<Type> types = const [V1HealthCheckResponse, _$V1HealthCheckResponse];

  @override
  final String wireName = r'V1HealthCheckResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1HealthCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(HealthCheckResponseServingStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1HealthCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1HealthCheckResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthCheckResponseServingStatus),
          ) as HealthCheckResponseServingStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1HealthCheckResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1HealthCheckResponseBuilder();
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

