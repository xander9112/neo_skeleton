import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/auth/di/auth_injection_container.dart';
import 'package:dio/dio.dart';

class LogoutInterceptor extends Interceptor {
  LogoutInterceptor();

  CancelToken? cancelToken;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      cancelToken?.cancel();
      slAuth<AuthManager<AuthenticatedUser>>().signOut(remote: false);
    }

    return super.onError(err, handler);
  }
}
