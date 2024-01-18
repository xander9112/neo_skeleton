import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LocalAuthGuard extends AutoRouteGuard {
  LocalAuthGuard(this.authManager);

  final AuthManager<AuthenticatedUser> authManager;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (!authManager.locked) {
      return resolver.next();
    }

    await router.replace(
      PinCodeRoute(
        onResult: (isSuccess) {
          resolver.nextOrBack(isSuccess);

          router.removeLast();
        },
      ),
    );
  }
}
