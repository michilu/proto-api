part of openapi.api;

class V1ExampleServiceQueryRequest {
  
  String id = null;
  V1ExampleServiceQueryRequest();

  @override
  String toString() {
    return 'V1ExampleServiceQueryRequest[id=$id, ]';
  }

  V1ExampleServiceQueryRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<V1ExampleServiceQueryRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<V1ExampleServiceQueryRequest>() : json.map((value) => V1ExampleServiceQueryRequest.fromJson(value)).toList();
  }

  static Map<String, V1ExampleServiceQueryRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V1ExampleServiceQueryRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V1ExampleServiceQueryRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of V1ExampleServiceQueryRequest-objects as value to a dart map
  static Map<String, List<V1ExampleServiceQueryRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<V1ExampleServiceQueryRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = V1ExampleServiceQueryRequest.listFromJson(value);
       });
     }
     return map;
  }
}

