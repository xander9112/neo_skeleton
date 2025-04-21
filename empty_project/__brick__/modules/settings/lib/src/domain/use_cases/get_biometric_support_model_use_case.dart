import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

@injectable
class GetBiometricSupportModel extends UseCaseNoParams<BiometricSupportModel> {
  GetBiometricSupportModel(this._biometricRepository);

  final BiometricRepository _biometricRepository;

  @override
  Future<BiometricSupportModel> call() {
    return _biometricRepository.getBiometricModel();
  }
}
