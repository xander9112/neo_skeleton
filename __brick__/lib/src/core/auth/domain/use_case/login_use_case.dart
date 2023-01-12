import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LoginUseCase
    implements UseCase<Either<Failure, bool>, LoginUseCaseParam> {
  LoginUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;
  @override
  Future<Either<Failure, bool>> call(LoginUseCaseParam params) async {
    //return _authManager.signIn(params.login, params.password);

    final result = await _authManager.signIn(params.login, params.password);

    return result.fold(Left.new, (isSuccess) async {
      if (isSuccess) {
        if (params.onResult != null) {
          params.onResult?.call(true);
        } else {
          //TODO: переход на главную через navigationManager
          //Only for demo
          await getIt<AppRouter>().replaceNamed(RoutePath.main);
        }
      }

      return Right(isSuccess);
    });
  }
}

class LoginUseCaseParam {
  LoginUseCaseParam({
    required this.login,
    required this.password,
    this.onResult,
  });

  final String login;
  final String password;
  final void Function(bool)? onResult;
}
