import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

class DioHttpClient implements IHttpClient<Dio> {
  DioHttpClient({required this.url}) {
    _client = Dio(
      BaseOptions(
        baseUrl: url.toString(),
      ),
    );
  }

  @override
  final Uri url;

  late final Dio _client;

  @override
  Dio get client => _client;

  @override
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return _client.get<T>(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response<T>> post<T>(
    String url, {
    dynamic data,
    Map<String, String>? headers,
  }) {
    return _client.post<T>(
      url,
      data: data,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response<T>> put<T>(
    String url, {
    dynamic data,
    Map<String, String>? headers,
  }) {
    return _client.put<T>(
      url,
      data: data,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response<T>> delete<T>(
    String url, {
    Map<String, String>? headers,
  }) {
    return _client.delete<T>(
      url,
      options: Options(headers: headers),
    );
  }
}
