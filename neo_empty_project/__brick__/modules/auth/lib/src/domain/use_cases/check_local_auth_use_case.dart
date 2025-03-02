import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

@injectable
class CheckLocalAuthUseCase
    implements UseCaseNoParams<Either<Failure, LocalAuthResult>> {
  CheckLocalAuthUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;
  @override
  Future<Either<Failure, LocalAuthResult>> call() async {
    if (!_authManager.settings.useLocalAuth) {
      return const Right(LocalAuthResult.notAvailable);
    }

    if (!await _authManager.hasPinCode) {
      return const Right(LocalAuthResult.notInitialized);
    }

    if (_authManager.locked) {
      return const Right(LocalAuthResult.locked);
    } else {
      return const Right(LocalAuthResult.unlocked);
    }
  }
}
