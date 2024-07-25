import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckPinCodeUseCase implements UseCase<Either<Failure, bool>, String> {
  CheckPinCodeUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Either<Failure, bool>> call(String params) async {
    final result = await _authManager.checkPinCode(params);

    if (result) {
      _authManager.locked = false;
    }
    
    return Right(result);
  }
}
