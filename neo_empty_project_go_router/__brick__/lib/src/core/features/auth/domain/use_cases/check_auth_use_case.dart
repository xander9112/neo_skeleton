import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckAuthUseCase implements UseCase<Either<Failure, bool>, NoParams> {
  CheckAuthUseCase(this._authManager, this._router);

  final AuthManager<AuthenticatedUser> _authManager;
  final AuthRouter _router;

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    final isAuth = await _authManager.isAuth;

    if (isAuth) {
      await _router.goToMain();
    }

    return Right(isAuth);
  }
}
