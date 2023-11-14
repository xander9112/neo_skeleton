import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SetBiometryUseCase implements UseCase<bool, NoParams> {
  SetBiometryUseCase(this._authManager, this._dialogService);

  final AuthManager<AuthenticatedUser> _authManager;

  final DialogService _dialogService;

  @override
  Future<bool> call(NoParams params) async {
    final result = await _authManager.getBiometricSupportModel();

    if (result.status == BiometricStatus.notAvailable) {
      return false;
    }

    if (result.status == BiometricStatus.available) {
      final useBio = await _dialogService.showDialog<bool>(
        dialogType: DialogTypes.confirmDialog,
        title: AuthI18n.useBiometricsToLogin,
      ) as bool?;

      if (useBio ?? false) {
        await _authManager.setUseBiometry(true);
        return true;
      } else {
        await _authManager.setUseBiometry(false);
        return false;
      }
    }
    return false;
  }
}
