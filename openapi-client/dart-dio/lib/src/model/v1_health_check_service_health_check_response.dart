//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/protov1_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_health_check_service_health_check_response.g.dart';

/// V1HealthCheckServiceHealthCheckResponse
///
/// Properties:
/// * [value] 
@BuiltValue()
abstract class V1HealthCheckServiceHealthCheckResponse implements Built<V1HealthCheckServiceHealthCheckResponse, V1HealthCheckServiceHealthCheckResponseBuilder> {
  @BuiltValueField(wireName: r'value')
  Protov1Response? get value;

  V1HealthCheckServiceHealthCheckResponse._();

  factory V1HealthCheckServiceHealthCheckResponse([void updates(V1HealthCheckServiceHealthCheckResponseBuilder b)]) = _$V1HealthCheckServiceHealthCheckResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1HealthCheckServiceHealthCheckResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1HealthCheckServiceHealthCheckResponse> get serializer => _$V1HealthCheckServiceHealthCheckResponseSerializer();
}

class _$V1HealthCheckServiceHealthCheckResponseSerializer implements PrimitiveSerializer<V1HealthCheckServiceHealthCheckResponse> {
  @override
  final Iterable<Type> types = const [V1HealthCheckServiceHealthCheckResponse, _$V1HealthCheckServiceHealthCheckResponse];

  @override
  final String wireName = r'V1HealthCheckServiceHealthCheckResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1HealthCheckServiceHealthCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(Protov1Response),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1HealthCheckServiceHealthCheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1HealthCheckServiceHealthCheckResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Protov1Response),
          ) as Protov1Response;
          result.value.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1HealthCheckServiceHealthCheckResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1HealthCheckServiceHealthCheckResponseBuilder();
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

