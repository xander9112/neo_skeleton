import 'package:auto_route/auto_route.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

class LocalAuthGuard extends AutoRedirectGuard {
  LocalAuthGuard(this.authManager) {
    authManager.addListener(() async {
      if (authManager.locked) {
        reevaluate();
      }
    });
  }

  final AuthManager<AuthenticatedUser> authManager;

  @override
  Future<bool> canNavigate(RouteMatch<dynamic> route) async {
    return !authManager.locked;
  }

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (!authManager.locked) {
      return resolver.next();
    }
/*
    if (await authManager.hasPinCode) {
      router.replace(PinCodeEnterRoute(
        onResult: (bool success) {
          if (success) {
            resolver.next(success);

            router.removeLast();
          }
        },
      ));
    } else {
      router.replace(PinCodeCreateRoute(
        onResult: (bool success) {
          if (success) {
            resolver.next(success);

            router.removeLast();
          }
        },
      ));
    }
    // router
    */
  }
}
