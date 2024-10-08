import 'dart:io';

import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class ApiDioClient {
  ApiDioClient(
    Uri uri, {
    required SecureStorageService storage,
  }) : _storage = storage {
    _initBaseOptions(uri);

    _initInterceptors();
  }

  final Dio _dio = Dio();
  final SecureStorageService _storage;
  final LogoutInterceptor logoutInterceptor = LogoutInterceptor();

  CancelToken cancelToken = CancelToken();

  Dio get dio => _dio;

  Map<String, String> get headers {
    return Map.castFrom<String, dynamic, String, String>(_dio.options.headers);
  }

  void _initBaseOptions(Uri baseUrl) {
    _dio.options.baseUrl = baseUrl.toString();
    _dio.options.connectTimeout = const Duration(seconds: 30); // 30s
    _dio.options.receiveTimeout = const Duration(seconds: 30); // 30s

    _dio.options.headers = <String, String>{
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: ContentType.json.toString(),
    };
  }

  void _initInterceptors() {
    _dio.interceptors.add(LogoutInterceptor());

    _dio.interceptors.add(TokenInterceptor(_storage));

    _dio.interceptors.add(AuthInterceptor(_storage, _dio));

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onResponse: _onResponse,
        onError: _onError,
      ),
    );
  }

  Future<void> _onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (cancelToken.isCancelled) {
      cancelToken = CancelToken();
      logoutInterceptor.cancelToken = cancelToken;
    }
    options.cancelToken = cancelToken;

    return handler.next(options);
  }

  Future<void> _onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    return handler.next(response);
  }

  Future<void> _onError(DioException e, ErrorInterceptorHandler handler) async {
    late DioException error;

    switch (e.response?.statusCode) {
      case DioForbiddenError.code:
        error = DioForbiddenError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioUnauthorizedError.code:
        error = DioUnauthorizedError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioBadRequestError.code:
        error = DioBadRequestError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioAuthenticationTimeoutError.code:
        error = DioAuthenticationTimeoutError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioUnprocessableEntityError.code:
        error = DioUnprocessableEntityError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioNotFoundError.code:
        error = DioNotFoundError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioBadGatewayError.code:
        error = DioBadGatewayError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioGatewayTimeoutError.code:
        error = DioGatewayTimeoutError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioServiceUnavailableError.code:
        error = DioServiceUnavailableError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioMethodNotAllowedError.code:
        error = DioMethodNotAllowedError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioTooManyRequestsError.code:
        error = DioTooManyRequestsError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      case DioInternalServerError.code:
        error = DioInternalServerError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

      default:
        if (e.response == null && e.error is SocketException) {
          error = DioNetworkError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else if (e.type == DioExceptionType.connectionTimeout ||
            e.type == DioExceptionType.receiveTimeout ||
            e.type == DioExceptionType.sendTimeout) {
          error = DioConnectTimeoutError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else if (e.type == DioExceptionType.unknown) {
          error = DioConnectTimeoutError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else if (e.type == DioExceptionType.cancel) {
          error = DioCancelError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else {
          error = e;
        }
    }

    return handler.next(error);
  }

  set newBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  String get newBaseUrl {
    return _dio.options.baseUrl;
  }
}
