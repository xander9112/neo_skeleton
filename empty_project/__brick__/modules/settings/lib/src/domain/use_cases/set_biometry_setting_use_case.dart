import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

@injectable
class SetBiometrySettingUseCase extends UseCase<void, bool> {
  SetBiometrySettingUseCase(this._biometricRepository);

  final BiometricRepository _biometricRepository;

  @override
  Future<void> call(bool params) {
    return _biometricRepository.setUseBiometric(value: params);
  }
}
