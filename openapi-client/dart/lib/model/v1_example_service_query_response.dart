part of openapi.api;

class V1ExampleServiceQueryResponse {
  
  Protov1Response value = null;
  V1ExampleServiceQueryResponse();

  @override
  String toString() {
    return 'V1ExampleServiceQueryResponse[value=$value, ]';
  }

  V1ExampleServiceQueryResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = (json['value'] == null) ?
      null :
      Protov1Response.fromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<V1ExampleServiceQueryResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V1ExampleServiceQueryResponse>() : json.map((value) => V1ExampleServiceQueryResponse.fromJson(value)).toList();
  }

  static Map<String, V1ExampleServiceQueryResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V1ExampleServiceQueryResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V1ExampleServiceQueryResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of V1ExampleServiceQueryResponse-objects as value to a dart map
  static Map<String, List<V1ExampleServiceQueryResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<V1ExampleServiceQueryResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = V1ExampleServiceQueryResponse.listFromJson(value);
       });
     }
     return map;
  }
}

