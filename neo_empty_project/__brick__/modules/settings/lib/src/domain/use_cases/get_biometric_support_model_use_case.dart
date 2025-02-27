import 'package:core/core.dart';
import 'package:settings/src/_src.dart';

class GetBiometricSupportModel extends UseCaseNoParams<BiometricSupportModel> {
  GetBiometricSupportModel(this._biometricRepository);

  final BiometricRepository _biometricRepository;

  @override
  Future<BiometricSupportModel> call() {
    return _biometricRepository.getBiometricModel();
  }
}
