//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HealthApi {
  HealthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /healthCheck' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] service:
  Future<Response> healthCheckWithHttpInfo({ String? service, }) async {
    // ignore: prefer_const_declarations
    final path = r'/healthCheck';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (service != null) {
      queryParams.addAll(_queryParams('', 'service', service));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] service:
  Future<V1HealthCheckResponse?> healthCheck({ String? service, }) async {
    final response = await healthCheckWithHttpInfo( service: service, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1HealthCheckResponse',) as V1HealthCheckResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /healthWatch' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] service:
  Future<Response> healthWatchWithHttpInfo({ String? service, }) async {
    // ignore: prefer_const_declarations
    final path = r'/healthWatch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (service != null) {
      queryParams.addAll(_queryParams('', 'service', service));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] service:
  Future<StreamResultOfV1HealthCheckResponse?> healthWatch({ String? service, }) async {
    final response = await healthWatchWithHttpInfo( service: service, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StreamResultOfV1HealthCheckResponse',) as StreamResultOfV1HealthCheckResponse;
    
    }
    return null;
  }
}
