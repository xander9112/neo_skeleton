import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.authManager);

  final AuthManager<AuthenticatedUser> authManager;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final bool isAuth = await authManager.isAuth;

    if (isAuth) {
      return resolver.next();
    }

    await router.replace(
      LoginRoute(
        onResult: (bool isSuccess) {
          resolver.next(isSuccess);          
        },
      ),
    );
  }
}
