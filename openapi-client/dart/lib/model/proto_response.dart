part of openapi.api;

class ProtoResponse {
  
  RpcCode code = null;
  //enum codeEnum {  OK,  CANCELLED,  UNKNOWN,  INVALID_ARGUMENT,  DEADLINE_EXCEEDED,  NOT_FOUND,  ALREADY_EXISTS,  PERMISSION_DENIED,  UNAUTHENTICATED,  RESOURCE_EXHAUSTED,  FAILED_PRECONDITION,  ABORTED,  OUT_OF_RANGE,  UNIMPLEMENTED,  INTERNAL,  UNAVAILABLE,  DATA_LOSS,  };{
  
  String message = null;
  ProtoResponse();

  @override
  String toString() {
    return 'ProtoResponse[code=$code, message=$message, ]';
  }

  ProtoResponse.fromJson(Map<String, dynamic> json) {
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

  static List<ProtoResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ProtoResponse>() : json.map((value) => ProtoResponse.fromJson(value)).toList();
  }

  static Map<String, ProtoResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProtoResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProtoResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProtoResponse-objects as value to a dart map
  static Map<String, List<ProtoResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProtoResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProtoResponse.listFromJson(value);
       });
     }
     return map;
  }
}

