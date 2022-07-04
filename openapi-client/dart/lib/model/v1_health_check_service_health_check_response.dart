//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1HealthCheckServiceHealthCheckResponse {
  /// Returns a new [V1HealthCheckServiceHealthCheckResponse] instance.
  V1HealthCheckServiceHealthCheckResponse({
    this.value,
  });

  Protov1Response value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HealthCheckServiceHealthCheckResponse &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'V1HealthCheckServiceHealthCheckResponse[value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [V1HealthCheckServiceHealthCheckResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1HealthCheckServiceHealthCheckResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return V1HealthCheckServiceHealthCheckResponse(
        value: Protov1Response.fromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<V1HealthCheckServiceHealthCheckResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(V1HealthCheckServiceHealthCheckResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <V1HealthCheckServiceHealthCheckResponse>[];

  static Map<String, V1HealthCheckServiceHealthCheckResponse> mapFromJson(dynamic json) {
    final map = <String, V1HealthCheckServiceHealthCheckResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = V1HealthCheckServiceHealthCheckResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of V1HealthCheckServiceHealthCheckResponse-objects as value to a dart map
  static Map<String, List<V1HealthCheckServiceHealthCheckResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<V1HealthCheckServiceHealthCheckResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = V1HealthCheckServiceHealthCheckResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

