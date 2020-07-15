part of openapi.api;

class ProtoRequest {
  
  String id = null;
  ProtoRequest();

  @override
  String toString() {
    return 'ProtoRequest[id=$id, ]';
  }

  ProtoRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ProtoRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<ProtoRequest>() : json.map((value) => ProtoRequest.fromJson(value)).toList();
  }

  static Map<String, ProtoRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProtoRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProtoRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProtoRequest-objects as value to a dart map
  static Map<String, List<ProtoRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProtoRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProtoRequest.listFromJson(value);
       });
     }
     return map;
  }
}

