part of openapi.api;



class ExampleServiceApi {
  final ApiClient apiClient;

  ExampleServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> exampleServiceQueryWithHttpInfo(String id, V1ExampleServiceQueryRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/v1/example/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["ApiKeyAuth", "OAuth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  /// 
  Future<V1ExampleServiceQueryResponse> exampleServiceQuery(String id, V1ExampleServiceQueryRequest body) async {
    Response response = await exampleServiceQueryWithHttpInfo(id, body);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'V1ExampleServiceQueryResponse') as V1ExampleServiceQueryResponse;
    } else {
      return null;
    }
  }

}
