import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckBiometryUseCase implements UseCase<bool, CheckBiometryUseCaseParam> {
  CheckBiometryUseCase(this._authManager, this._router);

  final AuthManager<AuthenticatedUser> _authManager;
  final AuthRouter _router;

  @override
  Future<bool> call(CheckBiometryUseCaseParam params) async {
    final biometricModel = await _authManager.getBiometricSupportModel();

    if (biometricModel.status != BiometricStatus.available ||
        !(biometricModel.useBiometric ?? false)) {
      return false;
    }

    final isSuccess = await _authManager.checkBiometry();
    if (isSuccess) {
      _authManager.locked = false;

      if (params.onResult != null) {
        params.onResult?.call(true);
      } else {
        await _router.replaceNamed(RoutePath.main);
        _router.removeLast();
      }
    }

    return isSuccess;
  }
}

class CheckBiometryUseCaseParam {
  CheckBiometryUseCaseParam({
    this.onResult,
  });

  final void Function(bool)? onResult;
}
