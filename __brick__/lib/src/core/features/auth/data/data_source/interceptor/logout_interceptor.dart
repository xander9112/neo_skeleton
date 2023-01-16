import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';

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
