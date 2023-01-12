import 'package:auto_route/auto_route.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

class AuthGuard extends AutoRedirectGuard {
  AuthGuard(this.authManager) {
    authManager.addListener(() async {
      if (!await authManager.isAuth) {
        reevaluate();
      }
    });
  }

  final AuthManager<AuthenticatedUser> authManager;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (await authManager.isAuth) {
      return resolver.next();
    }

    await router.replace(
      LoginRoute(
        onResult: (bool success) {
          if (success) {
            resolver.next(success);

            router.removeLast();
          }
        },
      ),
    );
  }

  @override
  Future<bool> canNavigate(RouteMatch<dynamic> route) async {
    return authManager.isAuth;
  }
}
