//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Protov1Response {
  /// Returns a new [Protov1Response] instance.
  Protov1Response({
    this.code,
    this.message,
  });

  RpcCode code;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Protov1Response &&
     other.code == code &&
     other.message == message;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'Protov1Response[code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  /// Returns a new [Protov1Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Protov1Response fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Protov1Response(
        code: RpcCode.fromJson(json[r'code']),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<Protov1Response> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Protov1Response.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Protov1Response>[];

  static Map<String, Protov1Response> mapFromJson(dynamic json) {
    final map = <String, Protov1Response>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Protov1Response.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Protov1Response-objects as value to a dart map
  static Map<String, List<Protov1Response>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Protov1Response>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Protov1Response.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

