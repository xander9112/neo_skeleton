import 'package:core/core.dart';
import 'package:settings/src/_src.dart';

class SetBiometrySettingUseCase extends UseCase<void, bool> {
  SetBiometrySettingUseCase(this._biometricRepository);

  final BiometricRepository _biometricRepository;

  @override
  Future<void> call(bool params) {
    return _biometricRepository.setUseBiometric(value: params);
  }
}
