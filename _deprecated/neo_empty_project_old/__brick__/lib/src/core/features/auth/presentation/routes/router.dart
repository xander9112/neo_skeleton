import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthRouter extends AppRouter {
  AuthRouter(super.router);

  Future<void> goToMain([bool shouldRemoveLast = false]) async {
    await replaceNamed(RoutePath.main);

    if (shouldRemoveLast) {
      removeLast();
    }
  }
}
