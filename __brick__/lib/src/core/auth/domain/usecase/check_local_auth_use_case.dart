import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckLocalAuthUseCase
    implements UseCase<Either<Failure, LocalAuthResult>, NoParams> {
  CheckLocalAuthUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;
  @override
  Future<Either<Failure, LocalAuthResult>> call(NoParams params) async {
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
