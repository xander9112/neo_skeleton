import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LogoutInterceptor extends Interceptor {
  LogoutInterceptor();

  CancelToken? cancelToken;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      cancelToken?.cancel();
      AuthInjection.sl<AuthManager<UserEntity>>().signOut(remote: false);
    }

    return super.onError(err, handler);
  }
}
