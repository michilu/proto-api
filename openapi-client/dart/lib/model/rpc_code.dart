//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RpcCode {
  /// Instantiate a new enum with the provided [value].
  const RpcCode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OK = RpcCode._(r'OK');
  static const CANCELLED = RpcCode._(r'CANCELLED');
  static const UNKNOWN = RpcCode._(r'UNKNOWN');
  static const INVALID_ARGUMENT = RpcCode._(r'INVALID_ARGUMENT');
  static const DEADLINE_EXCEEDED = RpcCode._(r'DEADLINE_EXCEEDED');
  static const NOT_FOUND = RpcCode._(r'NOT_FOUND');
  static const ALREADY_EXISTS = RpcCode._(r'ALREADY_EXISTS');
  static const PERMISSION_DENIED = RpcCode._(r'PERMISSION_DENIED');
  static const UNAUTHENTICATED = RpcCode._(r'UNAUTHENTICATED');
  static const RESOURCE_EXHAUSTED = RpcCode._(r'RESOURCE_EXHAUSTED');
  static const FAILED_PRECONDITION = RpcCode._(r'FAILED_PRECONDITION');
  static const ABORTED = RpcCode._(r'ABORTED');
  static const OUT_OF_RANGE = RpcCode._(r'OUT_OF_RANGE');
  static const UNIMPLEMENTED = RpcCode._(r'UNIMPLEMENTED');
  static const INTERNAL = RpcCode._(r'INTERNAL');
  static const UNAVAILABLE = RpcCode._(r'UNAVAILABLE');
  static const DATA_LOSS = RpcCode._(r'DATA_LOSS');

  /// List of all possible values in this [enum][RpcCode].
  static const values = <RpcCode>[
    OK,
    CANCELLED,
    UNKNOWN,
    INVALID_ARGUMENT,
    DEADLINE_EXCEEDED,
    NOT_FOUND,
    ALREADY_EXISTS,
    PERMISSION_DENIED,
    UNAUTHENTICATED,
    RESOURCE_EXHAUSTED,
    FAILED_PRECONDITION,
    ABORTED,
    OUT_OF_RANGE,
    UNIMPLEMENTED,
    INTERNAL,
    UNAVAILABLE,
    DATA_LOSS,
  ];

  static RpcCode? fromJson(dynamic value) => RpcCodeTypeTransformer().decode(value);

  static List<RpcCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RpcCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RpcCode] to String,
/// and [decode] dynamic data back to [RpcCode].
class RpcCodeTypeTransformer {
  factory RpcCodeTypeTransformer() => _instance ??= const RpcCodeTypeTransformer._();

  const RpcCodeTypeTransformer._();

  String encode(RpcCode data) => data.value;

  /// Decodes a [dynamic value][data] to a RpcCode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RpcCode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OK': return RpcCode.OK;
        case r'CANCELLED': return RpcCode.CANCELLED;
        case r'UNKNOWN': return RpcCode.UNKNOWN;
        case r'INVALID_ARGUMENT': return RpcCode.INVALID_ARGUMENT;
        case r'DEADLINE_EXCEEDED': return RpcCode.DEADLINE_EXCEEDED;
        case r'NOT_FOUND': return RpcCode.NOT_FOUND;
        case r'ALREADY_EXISTS': return RpcCode.ALREADY_EXISTS;
        case r'PERMISSION_DENIED': return RpcCode.PERMISSION_DENIED;
        case r'UNAUTHENTICATED': return RpcCode.UNAUTHENTICATED;
        case r'RESOURCE_EXHAUSTED': return RpcCode.RESOURCE_EXHAUSTED;
        case r'FAILED_PRECONDITION': return RpcCode.FAILED_PRECONDITION;
        case r'ABORTED': return RpcCode.ABORTED;
        case r'OUT_OF_RANGE': return RpcCode.OUT_OF_RANGE;
        case r'UNIMPLEMENTED': return RpcCode.UNIMPLEMENTED;
        case r'INTERNAL': return RpcCode.INTERNAL;
        case r'UNAVAILABLE': return RpcCode.UNAVAILABLE;
        case r'DATA_LOSS': return RpcCode.DATA_LOSS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RpcCodeTypeTransformer] instance.
  static RpcCodeTypeTransformer? _instance;
}

