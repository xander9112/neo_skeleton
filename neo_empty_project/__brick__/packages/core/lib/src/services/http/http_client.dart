import 'package:dependencies/dependencies.dart';

abstract class IHttpClient<T> {
  IHttpClient({required this.url});

  final Uri url;

  T get client;

  Future<Response<D>> get<D>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });
  Future<Response<D>> post<D>(
    String url, {
    dynamic data,
    Map<String, String>? headers,
  });
  Future<Response<D>> put<D>(
    String url, {
    dynamic data,
    Map<String, String>? headers,
  });
  Future<Response<D>> delete<D>(String url, {Map<String, String>? headers});
}
