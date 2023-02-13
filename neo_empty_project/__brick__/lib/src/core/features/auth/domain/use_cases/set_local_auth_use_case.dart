import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SetLocalAuthUseCase implements UseCase<Either<Failure, bool>, bool> {
  SetLocalAuthUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;
  @override
  Future<Either<Failure, bool>> call(bool params) async {
    _authManager.locked = params;

    return const Right(true);
  }
}
