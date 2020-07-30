part of openapi.api;



class HealthCheckServiceApi {
  final ApiClient apiClient;

  HealthCheckServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> healthCheckServiceHealthCheckWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/healthCheck".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

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
                                             'GET',
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
  Future<V1HealthCheckServiceHealthCheckResponse> healthCheckServiceHealthCheck() async {
    Response response = await healthCheckServiceHealthCheckWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'V1HealthCheckServiceHealthCheckResponse') as V1HealthCheckServiceHealthCheckResponse;
    } else {
      return null;
    }
  }

}
