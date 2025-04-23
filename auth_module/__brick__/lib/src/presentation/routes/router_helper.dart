import 'package:core/core.dart';

class AuthRouterHelper {
  AuthRouterHelper({required AppRouter router}) : _router = router;

  final AppRouter _router;

  Future<void> goToMain([bool shouldRemoveLast = false]) async {
    await _router.pushNamed(_router.initialRoute);
  }
}
