// import 'dart:io';

// import 'package:{{appName.snakeCase()}}/src/core/_core.dart';
// import 'package:dio/dio.dart';

// class ApiDioClient {
//   ApiDioClient(
//     Uri uri, {
//     required SecureStorageService storage,
//   }) : _storage = storage {
//     _initBaseOptions(uri);

//     _initInterceptors();
//   }

//   final Dio _dio = Dio();
//   final SecureStorageService _storage;
//   final LogoutInterceptor logoutInterceptor = LogoutInterceptor();

//   CancelToken cancelToken = CancelToken();

//   Dio get dio => _dio;

//   Map<String, String> get headers {
//     return Map.castFrom<String, dynamic, 
//String, String>(_dio.options.headers);
//   }

//   void _initBaseOptions(Uri baseUrl) {
//     _dio.options.baseUrl = baseUrl.toString();
//     _dio.options.connectTimeout = const Duration(seconds: 30); // 30s
//     _dio.options.receiveTimeout = const Duration(seconds: 30); // 30s

//     _dio.options.headers = <String, String>{
//       HttpHeaders.acceptHeader: 'application/json',
//       HttpHeaders.contentTypeHeader: ContentType.json.toString(),
//     };
//   }

//   void _initInterceptors() {
//     _dio.interceptors.add(LogoutInterceptor());

//     _dio.interceptors.add(TokenInterceptor(_storage));

//     _dio.interceptors.add(AuthInterceptor(_storage, _dio));

//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: _onRequest,
//       ),
//     );
//   }

//   Future<void> _onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     if (cancelToken.isCancelled) {
//       cancelToken = CancelToken();
//       logoutInterceptor.cancelToken = cancelToken;
//     }
//     options.cancelToken = cancelToken;

//     return handler.next(options);
//   }

//   set newBaseUrl(String baseUrl) {
//     _dio.options.baseUrl = baseUrl;
//   }

//   String get newBaseUrl {
//     return _dio.options.baseUrl;
//   }
// }
