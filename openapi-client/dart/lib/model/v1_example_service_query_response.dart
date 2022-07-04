//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ExampleServiceQueryResponse {
  /// Returns a new [V1ExampleServiceQueryResponse] instance.
  V1ExampleServiceQueryResponse({
    this.value,
  });

  Protov1Response value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExampleServiceQueryResponse &&
     other.value == value;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (value == null ? 0 : value.hashCode);

  @override
  String toString() => 'V1ExampleServiceQueryResponse[value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  /// Returns a new [V1ExampleServiceQueryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ExampleServiceQueryResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return V1ExampleServiceQueryResponse(
        value: Protov1Response.fromJson(json[r'value']),
      );
    }
    return null;
  }

  static List<V1ExampleServiceQueryResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(V1ExampleServiceQueryResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <V1ExampleServiceQueryResponse>[];

  static Map<String, V1ExampleServiceQueryResponse> mapFromJson(dynamic json) {
    final map = <String, V1ExampleServiceQueryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = V1ExampleServiceQueryResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of V1ExampleServiceQueryResponse-objects as value to a dart map
  static Map<String, List<V1ExampleServiceQueryResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<V1ExampleServiceQueryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = V1ExampleServiceQueryResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

