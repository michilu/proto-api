//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class V1ServingStatus {
  /// Instantiate a new enum with the provided [value].
  const V1ServingStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SERVING_STATUS_UNKNOWN_UNSPECIFIED = V1ServingStatus._(r'SERVING_STATUS_UNKNOWN_UNSPECIFIED');
  static const SERVING_STATUS_SERVING = V1ServingStatus._(r'SERVING_STATUS_SERVING');
  static const SERVING_STATUS_NOT_SERVING = V1ServingStatus._(r'SERVING_STATUS_NOT_SERVING');

  /// List of all possible values in this [enum][V1ServingStatus].
  static const values = <V1ServingStatus>[
    SERVING_STATUS_UNKNOWN_UNSPECIFIED,
    SERVING_STATUS_SERVING,
    SERVING_STATUS_NOT_SERVING,
  ];

  static V1ServingStatus? fromJson(dynamic value) => V1ServingStatusTypeTransformer().decode(value);

  static List<V1ServingStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1ServingStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1ServingStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [V1ServingStatus] to String,
/// and [decode] dynamic data back to [V1ServingStatus].
class V1ServingStatusTypeTransformer {
  factory V1ServingStatusTypeTransformer() => _instance ??= const V1ServingStatusTypeTransformer._();

  const V1ServingStatusTypeTransformer._();

  String encode(V1ServingStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a V1ServingStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  V1ServingStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SERVING_STATUS_UNKNOWN_UNSPECIFIED': return V1ServingStatus.SERVING_STATUS_UNKNOWN_UNSPECIFIED;
        case r'SERVING_STATUS_SERVING': return V1ServingStatus.SERVING_STATUS_SERVING;
        case r'SERVING_STATUS_NOT_SERVING': return V1ServingStatus.SERVING_STATUS_NOT_SERVING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [V1ServingStatusTypeTransformer] instance.
  static V1ServingStatusTypeTransformer? _instance;
}

