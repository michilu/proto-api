//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/protov1_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_example_service_query_response.g.dart';

/// V1ExampleServiceQueryResponse
///
/// Properties:
/// * [value] 
@BuiltValue()
abstract class V1ExampleServiceQueryResponse implements Built<V1ExampleServiceQueryResponse, V1ExampleServiceQueryResponseBuilder> {
  @BuiltValueField(wireName: r'value')
  Protov1Response? get value;

  V1ExampleServiceQueryResponse._();

  factory V1ExampleServiceQueryResponse([void updates(V1ExampleServiceQueryResponseBuilder b)]) = _$V1ExampleServiceQueryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExampleServiceQueryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExampleServiceQueryResponse> get serializer => _$V1ExampleServiceQueryResponseSerializer();
}

class _$V1ExampleServiceQueryResponseSerializer implements PrimitiveSerializer<V1ExampleServiceQueryResponse> {
  @override
  final Iterable<Type> types = const [V1ExampleServiceQueryResponse, _$V1ExampleServiceQueryResponse];

  @override
  final String wireName = r'V1ExampleServiceQueryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExampleServiceQueryResponse object, {
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
    V1ExampleServiceQueryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExampleServiceQueryResponseBuilder result,
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
  V1ExampleServiceQueryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExampleServiceQueryResponseBuilder();
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

