import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class ApiDioClient {
  ApiDioClient(
    Uri uri, {
    required SecureStorageService storage,
  }) : _storage = storage {
    // _initBadCertificateCallback();

    _initBaseOptions(uri);

    _initInterceptors();
  }

  final Dio _dio = Dio();
  final SecureStorageService _storage;
  final LogoutInterceptor logoutInterceptor = LogoutInterceptor();

  CancelToken cancelToken = CancelToken();
  // final ErrorHandler _errorHandler = ErrorHandler();

  Dio get dio => _dio;

  Map<String, String> get headers {
    return Map.castFrom<String, dynamic, String, String>(_dio.options.headers);
  }

  // void _initBadCertificateCallback() {
  //   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
  //       (HttpClient client) {
  //     client.badCertificateCallback =
  //         (X509Certificate cert, String host, int port) => true;
  //     return client;
  //   };
  // }

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
    if (kDebugMode) {
      // _dio.interceptors.add(
      //   PrettyDioLogger(
      //     requestHeader: true,
      //     // requestBody: true,
      //     responseBody: false,
      //   ),
      // );
    }

    _dio.interceptors.add(LogoutInterceptor());

    _dio.interceptors.add(TokenInterceptor(_storage));

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
    // ignore: avoid_dynamic_calls
    if (response.data.runtimeType != String) {
      // ignore: avoid_dynamic_calls
      if (response.data != null && response.data['data'] != null) {
        // ignore: avoid_dynamic_calls
        response.data = response.data['data'];
      }
    }

    return handler.next(response);
  }

  Future<void> _onError(DioError e, ErrorInterceptorHandler handler) async {
    late DioError error;

    switch (e.response?.statusCode) {
      case DioForbiddenError.code:
        error = DioForbiddenError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioUnauthorizedError.code:
        error = DioUnauthorizedError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        if (e.requestOptions.path != ApiMethods.authLogout) {
          // _cancelToken?.cancel();
        }

        break;
      case DioBadRequestError.code:
        error = DioBadRequestError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioAuthenticationTimeoutError.code:
        error = DioAuthenticationTimeoutError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioUnprocessableEntityError.code:
        error = DioUnprocessableEntityError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioNotFoundError.code:
        error = DioNotFoundError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioBadGatewayError.code:
        error = DioBadGatewayError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioGatewayTimeoutError.code:
        error = DioGatewayTimeoutError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioServiceUnavailableError.code:
        error = DioServiceUnavailableError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioMethodNotAllowedError.code:
        error = DioMethodNotAllowedError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioTooManyRequestsError.code:
        error = DioTooManyRequestsError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      case DioInternalServerError.code:
        error = DioInternalServerError(
          requestOptions: e.requestOptions,
          type: e.type,
          error: e.error,
          response: e.response,
        );

        break;
      default:
        if (e.response == null && e.error is SocketException) {
          error = DioNetworkError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else if (e.type == DioErrorType.connectionTimeout ||
            e.type == DioErrorType.receiveTimeout ||
            e.type == DioErrorType.sendTimeout) {
          error = DioConnectTimeoutError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else if (e.type == DioErrorType.unknown) {
          error = DioConnectTimeoutError(
            requestOptions: e.requestOptions,
            type: e.type,
            error: e.error,
            response: e.response,
          );
        } else if (e.type == DioErrorType.cancel) {
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
