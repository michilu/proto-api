//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CheckResponseServingStatus {
  /// Instantiate a new enum with the provided [value].
  const CheckResponseServingStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNKNOWN_UNSPECIFIED = CheckResponseServingStatus._(r'SERVING_STATUS_UNKNOWN_UNSPECIFIED');
  static const SERVING = CheckResponseServingStatus._(r'SERVING_STATUS_SERVING');
  static const NOT_SERVING = CheckResponseServingStatus._(r'SERVING_STATUS_NOT_SERVING');

  /// List of all possible values in this [enum][CheckResponseServingStatus].
  static const values = <CheckResponseServingStatus>[
    UNKNOWN_UNSPECIFIED,
    SERVING,
    NOT_SERVING,
  ];

  static CheckResponseServingStatus? fromJson(dynamic value) => CheckResponseServingStatusTypeTransformer().decode(value);

  static List<CheckResponseServingStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckResponseServingStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckResponseServingStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckResponseServingStatus] to String,
/// and [decode] dynamic data back to [CheckResponseServingStatus].
class CheckResponseServingStatusTypeTransformer {
  factory CheckResponseServingStatusTypeTransformer() => _instance ??= const CheckResponseServingStatusTypeTransformer._();

  const CheckResponseServingStatusTypeTransformer._();

  String encode(CheckResponseServingStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckResponseServingStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckResponseServingStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SERVING_STATUS_UNKNOWN_UNSPECIFIED': return CheckResponseServingStatus.UNKNOWN_UNSPECIFIED;
        case r'SERVING_STATUS_SERVING': return CheckResponseServingStatus.SERVING;
        case r'SERVING_STATUS_NOT_SERVING': return CheckResponseServingStatus.NOT_SERVING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckResponseServingStatusTypeTransformer] instance.
  static CheckResponseServingStatusTypeTransformer? _instance;
}

