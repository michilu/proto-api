//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HealthCheckResponseServingStatus {
  /// Instantiate a new enum with the provided [value].
  const HealthCheckResponseServingStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNKNOWN = HealthCheckResponseServingStatus._(r'UNKNOWN');
  static const SERVING = HealthCheckResponseServingStatus._(r'SERVING');
  static const NOT_SERVING = HealthCheckResponseServingStatus._(r'NOT_SERVING');
  static const SERVICE_UNKNOWN = HealthCheckResponseServingStatus._(r'SERVICE_UNKNOWN');

  /// List of all possible values in this [enum][HealthCheckResponseServingStatus].
  static const values = <HealthCheckResponseServingStatus>[
    UNKNOWN,
    SERVING,
    NOT_SERVING,
    SERVICE_UNKNOWN,
  ];

  static HealthCheckResponseServingStatus? fromJson(dynamic value) => HealthCheckResponseServingStatusTypeTransformer().decode(value);

  static List<HealthCheckResponseServingStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthCheckResponseServingStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthCheckResponseServingStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HealthCheckResponseServingStatus] to String,
/// and [decode] dynamic data back to [HealthCheckResponseServingStatus].
class HealthCheckResponseServingStatusTypeTransformer {
  factory HealthCheckResponseServingStatusTypeTransformer() => _instance ??= const HealthCheckResponseServingStatusTypeTransformer._();

  const HealthCheckResponseServingStatusTypeTransformer._();

  String encode(HealthCheckResponseServingStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthCheckResponseServingStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthCheckResponseServingStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNKNOWN': return HealthCheckResponseServingStatus.UNKNOWN;
        case r'SERVING': return HealthCheckResponseServingStatus.SERVING;
        case r'NOT_SERVING': return HealthCheckResponseServingStatus.NOT_SERVING;
        case r'SERVICE_UNKNOWN': return HealthCheckResponseServingStatus.SERVICE_UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthCheckResponseServingStatusTypeTransformer] instance.
  static HealthCheckResponseServingStatusTypeTransformer? _instance;
}

