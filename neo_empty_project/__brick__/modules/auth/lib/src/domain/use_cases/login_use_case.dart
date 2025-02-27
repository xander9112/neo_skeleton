import 'dart:async';

import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';

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
