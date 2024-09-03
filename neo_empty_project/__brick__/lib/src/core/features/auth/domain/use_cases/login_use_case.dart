import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LoginUseCase
    implements UseCase<Either<Failure, bool>, LoginUseCaseParam> {
  LoginUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<Either<Failure, bool>> call(LoginUseCaseParam params) async {
    return _authManager.signIn(params.login, params.password);
  }
}

class LoginUseCaseParam {
  LoginUseCaseParam({
    required this.login,
    required this.password,
  });

  final String login;
  final String password;
}
