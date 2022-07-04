//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1ExampleServiceQueryRequest {
  /// Returns a new [V1ExampleServiceQueryRequest] instance.
  V1ExampleServiceQueryRequest({
    this.id,
  });

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ExampleServiceQueryRequest &&
     other.id == id;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode);

  @override
  String toString() => 'V1ExampleServiceQueryRequest[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  /// Returns a new [V1ExampleServiceQueryRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1ExampleServiceQueryRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return V1ExampleServiceQueryRequest(
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<V1ExampleServiceQueryRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(V1ExampleServiceQueryRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <V1ExampleServiceQueryRequest>[];

  static Map<String, V1ExampleServiceQueryRequest> mapFromJson(dynamic json) {
    final map = <String, V1ExampleServiceQueryRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = V1ExampleServiceQueryRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of V1ExampleServiceQueryRequest-objects as value to a dart map
  static Map<String, List<V1ExampleServiceQueryRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<V1ExampleServiceQueryRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = V1ExampleServiceQueryRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

