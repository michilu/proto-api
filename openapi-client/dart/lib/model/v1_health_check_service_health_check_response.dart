part of openapi.api;

class V1HealthCheckServiceHealthCheckResponse {
  
  Protov1Response value = null;
  V1HealthCheckServiceHealthCheckResponse();

  @override
  String toString() {
    return 'V1HealthCheckServiceHealthCheckResponse[value=$value, ]';
  }

  V1HealthCheckServiceHealthCheckResponse.fromJson(Map<String, dynamic> json) {
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

  static List<V1HealthCheckServiceHealthCheckResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<V1HealthCheckServiceHealthCheckResponse>() : json.map((value) => V1HealthCheckServiceHealthCheckResponse.fromJson(value)).toList();
  }

  static Map<String, V1HealthCheckServiceHealthCheckResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, V1HealthCheckServiceHealthCheckResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = V1HealthCheckServiceHealthCheckResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of V1HealthCheckServiceHealthCheckResponse-objects as value to a dart map
  static Map<String, List<V1HealthCheckServiceHealthCheckResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<V1HealthCheckServiceHealthCheckResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = V1HealthCheckServiceHealthCheckResponse.listFromJson(value);
       });
     }
     return map;
  }
}

