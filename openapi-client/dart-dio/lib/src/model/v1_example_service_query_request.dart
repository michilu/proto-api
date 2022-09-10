//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v1_example_service_query_request.g.dart';

/// V1ExampleServiceQueryRequest
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class V1ExampleServiceQueryRequest implements Built<V1ExampleServiceQueryRequest, V1ExampleServiceQueryRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  V1ExampleServiceQueryRequest._();

  factory V1ExampleServiceQueryRequest([void updates(V1ExampleServiceQueryRequestBuilder b)]) = _$V1ExampleServiceQueryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V1ExampleServiceQueryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V1ExampleServiceQueryRequest> get serializer => _$V1ExampleServiceQueryRequestSerializer();
}

class _$V1ExampleServiceQueryRequestSerializer implements PrimitiveSerializer<V1ExampleServiceQueryRequest> {
  @override
  final Iterable<Type> types = const [V1ExampleServiceQueryRequest, _$V1ExampleServiceQueryRequest];

  @override
  final String wireName = r'V1ExampleServiceQueryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V1ExampleServiceQueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V1ExampleServiceQueryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V1ExampleServiceQueryRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V1ExampleServiceQueryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V1ExampleServiceQueryRequestBuilder();
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

