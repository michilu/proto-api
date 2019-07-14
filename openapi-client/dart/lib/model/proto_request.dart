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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<ProtoRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtoRequest>() : json.map((value) => new ProtoRequest.fromJson(value)).toList();
  }

  static Map<String, ProtoRequest> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ProtoRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ProtoRequest.fromJson(value));
    }
    return map;
  }
}

