part of openapi.api;

class ProtobufAny {
  /* A URL/resource name that uniquely identifies the type of the serialized protocol buffer message. This string must contain at least one \"/\" character. The last segment of the URL's path must represent the fully qualified name of the type (as in `path/google.protobuf.Duration`). The name should be in a canonical form (e.g., leading \".\" is not accepted).  In practice, teams usually precompile into the binary all types that they expect it to use in the context of Any. However, for URLs which use the scheme `http`, `https`, or no scheme, one can optionally set up a type server that maps type URLs to message definitions as follows:  * If no scheme is provided, `https` is assumed. * An HTTP GET on the URL must yield a [google.protobuf.Type][]   value in binary format, or produce an error. * Applications are allowed to cache lookup results based on the   URL, or have them precompiled into a binary to avoid any   lookup. Therefore, binary compatibility needs to be preserved   on changes to types. (Use versioned type names to manage   breaking changes.)  Note: this functionality is not currently available in the official protobuf release, and it is not used for type URLs beginning with type.googleapis.com.  Schemes other than `http`, `https` (or the empty scheme) might be used with implementation specific semantics. */
  String typeUrl = null;
  /* Must be a valid serialized protocol buffer of the above specified type. */
  String value = null;
  ProtobufAny();

  @override
  String toString() {
    return 'ProtobufAny[typeUrl=$typeUrl, value=$value, ]';
  }

  ProtobufAny.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeUrl = json['type_url'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeUrl != null)
      json['type_url'] = typeUrl;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<ProtobufAny> listFromJson(List<dynamic> json) {
    return json == null ? List<ProtobufAny>() : json.map((value) => ProtobufAny.fromJson(value)).toList();
  }

  static Map<String, ProtobufAny> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProtobufAny>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProtobufAny.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProtobufAny-objects as value to a dart map
  static Map<String, List<ProtobufAny>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProtobufAny>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProtobufAny.listFromJson(value);
       });
     }
     return map;
  }
}

