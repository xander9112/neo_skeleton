import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LocalAuthGuard extends AutoRouteGuard {
  LocalAuthGuard(
    this.authManager, {
    this.replace = true,
    this.useAppBar = false,
  });

  final AuthManager<UserEntity> authManager;

  final bool replace;
  final bool useAppBar;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (!authManager.locked) {
      resolver.next();

      return;
    }

    await resolver.redirect(
      PinCodeRoute(
        useAppBar: useAppBar,
        onResult: resolver.nextOrBack,
      ),
    );
  }
}
