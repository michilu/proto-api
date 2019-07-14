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
    if (json['code'] == null) {
      code = null;
    } else {
      code = new RpcCode.fromJson(json['code']);
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
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
    return json == null ? new List<ProtoResponse>() : json.map((value) => new ProtoResponse.fromJson(value)).toList();
  }

  static Map<String, ProtoResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ProtoResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ProtoResponse.fromJson(value));
    }
    return map;
  }
}

