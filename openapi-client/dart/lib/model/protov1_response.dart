part of openapi.api;

class Protov1Response {
  
  RpcCode code = null;
  //enum codeEnum {  OK,  CANCELLED,  UNKNOWN,  INVALID_ARGUMENT,  DEADLINE_EXCEEDED,  NOT_FOUND,  ALREADY_EXISTS,  PERMISSION_DENIED,  UNAUTHENTICATED,  RESOURCE_EXHAUSTED,  FAILED_PRECONDITION,  ABORTED,  OUT_OF_RANGE,  UNIMPLEMENTED,  INTERNAL,  UNAVAILABLE,  DATA_LOSS,  };{
  
  String message = null;
  Protov1Response();

  @override
  String toString() {
    return 'Protov1Response[code=$code, message=$message, ]';
  }

  Protov1Response.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = (json['code'] == null) ?
      null :
      RpcCode.fromJson(json['code']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<Protov1Response> listFromJson(List<dynamic> json) {
    return json == null ? List<Protov1Response>() : json.map((value) => Protov1Response.fromJson(value)).toList();
  }

  static Map<String, Protov1Response> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Protov1Response>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Protov1Response.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Protov1Response-objects as value to a dart map
  static Map<String, List<Protov1Response>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Protov1Response>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Protov1Response.listFromJson(value);
       });
     }
     return map;
  }
}

