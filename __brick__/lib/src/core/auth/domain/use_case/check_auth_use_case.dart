import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckAuthUseCase
    implements UseCase<Either<Failure, bool>, CheckAuthUseCaseParam> {
  CheckAuthUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Either<Failure, bool>> call(CheckAuthUseCaseParam params) async {
    final isAuth = await _authManager.isAuth;
    if (isAuth) {
      if (params.onResult != null) {
        params.onResult?.call(true);
      } else {
        //TODO: переход на главную через navigationManager
        //Only for demo
        await getIt<AppRouter>().replaceNamed(RoutePath.main);
      }
    }
    return Right(isAuth);
  }
}

class CheckAuthUseCaseParam {
  CheckAuthUseCaseParam({
    this.onResult,
  });

  final void Function(bool)? onResult;
}
