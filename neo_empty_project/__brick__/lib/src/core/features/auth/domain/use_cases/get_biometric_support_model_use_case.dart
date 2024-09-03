import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class GetBiometricSupportModel
    extends UseCase<BiometricSupportModel, NoParams> {
  GetBiometricSupportModel(this._authManager);

  final AuthManager<UserEntity> _authManager;
  @override
  Future<BiometricSupportModel> call(NoParams params) {
    return _authManager.getBiometricSupportModel();
  }
}
