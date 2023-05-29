import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SetNewPinCodeUseCase extends UseCase<void, NoParams> {
  SetNewPinCodeUseCase(this.authManager, this._dialogService);

  final AuthManager<AuthenticatedUser> authManager;

  final DialogService _dialogService;
  
  @override
  Future<void> call(NoParams params) async {
    final result = await _dialogService.showDialog<bool>(
      dialogType: DialogTypes.checkPinCode,
    ) as bool;

    if (result) {
      await authManager.removePinCode();
      // TODO(username): dialog
      authManager.locked = true;
    }
  }
}
