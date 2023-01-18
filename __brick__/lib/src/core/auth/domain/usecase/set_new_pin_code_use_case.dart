import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SetNewPinCodeUseCase extends UseCase<void, NoParams> {
  SetNewPinCodeUseCase(this.authManager);

  final AuthManager<AuthenticatedUser> authManager;
  @override
  Future<void> call(NoParams params) async {
    await authManager.removePinCode();
    //TODO: dialog
    authManager.locked = true;
  }
}
