//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RuntimeError {
  /// Returns a new [RuntimeError] instance.
  RuntimeError({
    this.error,
    this.code,
    this.message,
    this.details = const [],
  });

  String error;

  int code;

  String message;

  List<ProtobufAny> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RuntimeError &&
     other.error == error &&
     other.code == code &&
     other.message == message &&
     other.details == details;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (error == null ? 0 : error.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (details == null ? 0 : details.hashCode);

  @override
  String toString() => 'RuntimeError[error=$error, code=$code, message=$message, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (error != null) {
      json[r'error'] = error;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    return json;
  }

  /// Returns a new [RuntimeError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RuntimeError fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RuntimeError(
        error: mapValueOfType<String>(json, r'error'),
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
        details: ProtobufAny.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<RuntimeError> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RuntimeError.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RuntimeError>[];

  static Map<String, RuntimeError> mapFromJson(dynamic json) {
    final map = <String, RuntimeError>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RuntimeError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RuntimeError-objects as value to a dart map
  static Map<String, List<RuntimeError>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RuntimeError>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RuntimeError.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

