import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

@injectable
class CheckPinCodeUseCase
    implements UseCase<Either<Failure, bool>, CheckPinCodeUseCaseParams> {
  CheckPinCodeUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<Either<Failure, bool>> call(CheckPinCodeUseCaseParams params) async {
    final result = await _authManager.checkPinCode(params.code);

    if (result) {
      _authManager.unlock();
    } else if (params.blockIfError) {
      await _authManager.block();
    }

    return Right(result);
  }
}

class CheckPinCodeUseCaseParams {
  CheckPinCodeUseCaseParams({required this.code, this.blockIfError = false});

  final String code;
  final bool blockIfError;
}
