part of openapi.api;

class GatewayHealthCheckResponse {
  
  bool ok = null;
  GatewayHealthCheckResponse();

  @override
  String toString() {
    return 'GatewayHealthCheckResponse[ok=$ok, ]';
  }

  GatewayHealthCheckResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ok'] == null) {
      ok = null;
    } else {
          ok = json['ok'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ok != null)
      json['ok'] = ok;
    return json;
  }

  static List<GatewayHealthCheckResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GatewayHealthCheckResponse>() : json.map((value) => new GatewayHealthCheckResponse.fromJson(value)).toList();
  }

  static Map<String, GatewayHealthCheckResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GatewayHealthCheckResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GatewayHealthCheckResponse.fromJson(value));
    }
    return map;
  }
}

