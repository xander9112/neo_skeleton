import 'package:auth/src/_src.dart';
import 'package:auto_route/auto_route.dart';

class BlockAuthGuard extends AutoRouteGuard {
  BlockAuthGuard(this.authManager);

  final AuthManager<UserEntity> authManager;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (!authManager.blocked) {
      return resolver.next();
    }

    await resolver.redirect(
      BlockRoute(onResult: resolver.next),
    );
  }
}
