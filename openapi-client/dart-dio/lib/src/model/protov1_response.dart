//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/rpc_code.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protov1_response.g.dart';

/// Protov1Response
///
/// Properties:
/// * [code] 
/// * [details] 
/// * [message] 
@BuiltValue()
abstract class Protov1Response implements Built<Protov1Response, Protov1ResponseBuilder> {
  @BuiltValueField(wireName: r'code')
  RpcCode? get code;
  // enum codeEnum {  OK,  CANCELLED,  UNKNOWN,  INVALID_ARGUMENT,  DEADLINE_EXCEEDED,  NOT_FOUND,  ALREADY_EXISTS,  PERMISSION_DENIED,  UNAUTHENTICATED,  RESOURCE_EXHAUSTED,  FAILED_PRECONDITION,  ABORTED,  OUT_OF_RANGE,  UNIMPLEMENTED,  INTERNAL,  UNAVAILABLE,  DATA_LOSS,  };

  @BuiltValueField(wireName: r'details')
  BuiltList<String>? get details;

  @BuiltValueField(wireName: r'message')
  String? get message;

  Protov1Response._();

  factory Protov1Response([void updates(Protov1ResponseBuilder b)]) = _$Protov1Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Protov1ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Protov1Response> get serializer => _$Protov1ResponseSerializer();
}

class _$Protov1ResponseSerializer implements PrimitiveSerializer<Protov1Response> {
  @override
  final Iterable<Type> types = const [Protov1Response, _$Protov1Response];

  @override
  final String wireName = r'Protov1Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Protov1Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(RpcCode),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Protov1Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Protov1ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RpcCode),
          ) as RpcCode;
          result.code = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.details.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Protov1Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Protov1ResponseBuilder();
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

