import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SubscribeAuthEventUseCase extends UseCase<void, void Function()> {
  SubscribeAuthEventUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<void> call(void Function() callback) async {
    _authManager.addListener(callback);
    return;
  }
}
