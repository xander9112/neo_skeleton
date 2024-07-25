import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SetBiometrySettingUseCase extends UseCase<void, bool> {
  SetBiometrySettingUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<void> call(bool params) {
    return _authManager.setUseBiometry(params);
  }
}
