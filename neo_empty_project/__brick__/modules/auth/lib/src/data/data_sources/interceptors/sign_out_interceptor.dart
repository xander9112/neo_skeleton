import 'package:auth/src/_src.dart';
import 'package:dependencies/dependencies.dart';

class SignOutInterceptor extends Interceptor {
  SignOutInterceptor();

  CancelToken? cancelToken;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      cancelToken?.cancel();
      sl<AuthManager<UserEntity>>().signOut(remote: false);
    }

    return super.onError(err, handler);
  }
}
