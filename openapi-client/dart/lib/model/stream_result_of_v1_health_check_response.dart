//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StreamResultOfV1HealthCheckResponse {
  /// Returns a new [StreamResultOfV1HealthCheckResponse] instance.
  StreamResultOfV1HealthCheckResponse({
    this.result,
    this.error,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1HealthCheckResponse? result;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RpcStatus? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StreamResultOfV1HealthCheckResponse &&
    other.result == result &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (result == null ? 0 : result!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'StreamResultOfV1HealthCheckResponse[result=$result, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [StreamResultOfV1HealthCheckResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StreamResultOfV1HealthCheckResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StreamResultOfV1HealthCheckResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StreamResultOfV1HealthCheckResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StreamResultOfV1HealthCheckResponse(
        result: V1HealthCheckResponse.fromJson(json[r'result']),
        error: RpcStatus.fromJson(json[r'error']),
      );
    }
    return null;
  }

  static List<StreamResultOfV1HealthCheckResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StreamResultOfV1HealthCheckResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StreamResultOfV1HealthCheckResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StreamResultOfV1HealthCheckResponse> mapFromJson(dynamic json) {
    final map = <String, StreamResultOfV1HealthCheckResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StreamResultOfV1HealthCheckResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StreamResultOfV1HealthCheckResponse-objects as value to a dart map
  static Map<String, List<StreamResultOfV1HealthCheckResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StreamResultOfV1HealthCheckResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StreamResultOfV1HealthCheckResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

