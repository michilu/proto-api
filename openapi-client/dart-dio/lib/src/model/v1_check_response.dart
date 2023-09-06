//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/check_response_serving_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_check_response.g.dart';

/// V1CheckResponse
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class V1CheckResponse implements Built<V1CheckResponse, V1CheckResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  CheckResponseServingStatus? get status;
  // enum statusEnum {  SERVING_STATUS_UNKNOWN_UNSPECIFIED,  SERVING_STATUS_SERVING,  SERVING_STATUS_NOT_SERVING,  };

  V1CheckResponse._();

  factory V1CheckResponse([void updates(V1CheckResponseBuilder b)]) = _$V1CheckResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1CheckResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1CheckResponse> get serializer => _$V1CheckResponseSerializer();
}

class _$V1CheckResponseSerializer implements PrimitiveSerializer<V1CheckResponse> {
  @override
  final Iterable<Type> types = const [V1CheckResponse, _$V1CheckResponse];

  @override
  final String wireName = r'V1CheckResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1CheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CheckResponseServingStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1CheckResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1CheckResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CheckResponseServingStatus),
          ) as CheckResponseServingStatus;
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
  V1CheckResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1CheckResponseBuilder();
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

