import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SetPinCodeUseCase implements UseCase<Either<Failure, bool>, String> {
  SetPinCodeUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<Either<Failure, bool>> call(String params) async {
    await _authManager.setPinCode(params);

    _authManager.unlock();

    return const Right(true);
  }
}
