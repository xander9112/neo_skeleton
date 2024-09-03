import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckPinCodeFromDialogUseCase
    implements UseCase<Either<Failure, bool>, String> {
  CheckPinCodeFromDialogUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<Either<Failure, bool>> call(String params) async {
    final result = await _authManager.checkPinCode(params);

    return Right(result);
  }
}
