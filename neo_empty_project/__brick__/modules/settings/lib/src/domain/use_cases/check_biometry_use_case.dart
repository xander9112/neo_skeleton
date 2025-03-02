import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

@injectable
class CheckBiometryUseCase implements UseCase<bool, CheckBiometryUseCaseParam> {
  CheckBiometryUseCase(this._biometricRepository);

  final BiometricRepository _biometricRepository;

  @override
  Future<bool> call(CheckBiometryUseCaseParam params) async {
    final biometricModel = await _biometricRepository.getBiometricModel();

    if (biometricModel.status != BiometricStatus.available ||
        !(biometricModel.useBiometric ?? false)) {
      return false;
    }

    final isSuccess = await _biometricRepository.authenticate();

    if (isSuccess) {
      // _authManager.lock();

      if (params.onResult != null) {
        params.onResult?.call(true);
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
