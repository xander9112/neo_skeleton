import 'package:auth/src/_src.dart';
import 'package:auto_route/auto_route.dart';

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
