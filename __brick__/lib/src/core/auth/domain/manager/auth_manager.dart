// ignore: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_setters_without_getters

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

abstract class AuthManager<U> extends ChangeNotifier {
  AuthManager({
    required this.settings,
  });
  final AuthManagerSettings settings;

  U get user;

  Future<bool> get isAuth;

  set authenticated(bool value);

  bool get locked;

  set locked(bool value);

  Future<Either<Failure, bool>> signIn(String login, String password);

  Future<Either<Failure, bool>> signOut();

  bool get isChecked;

  set isChecked(bool value);
}

class AuthManagerImpl extends AuthManager<AuthenticatedUser> {
  AuthManagerImpl({
    required this.authRepository,
    required this.biometricRepository,
    required super.settings,
  });

  final AuthRepository<AuthModel, AuthenticatedUser> authRepository;

  final BiometricRepository biometricRepository;

  AuthenticatedUser _user = const AuthenticatedUser(
    id: 0,
    email: '',
    ldapId: '',
    login: '',
    lastName: '',
    firstName: '',
  );

  bool _authenticated = false;

  @override
  Future<bool> get isAuth async {
    final hasToken = await authRepository.hasAccessToken();

    if (hasToken != _authenticated) {
      _authenticated = hasToken;
      notifyListeners();
    }

    return _authenticated;
  }

  @override
  set authenticated(bool value) {
    _authenticated = value;
    notifyListeners();
  }

  bool _locked = true;

  @override
  bool get locked {
    return false;
    /* if (!settings.useLocalAuth) {
      return false;
    } else {
      return _locked;
    }*/
  }

  @override
  set locked(bool value) {
    _locked = value;
    notifyListeners();
  }

  @override
  Future<Either<Failure, bool>> signIn(String login, String password) async {
    final result = await authRepository.signIn(login, password);

    return result.fold(Left.new, (authModel) async {
      await authRepository.setAccessToken(authModel.token);

      await authRepository.setUserType(authModel.user.type);

      _user = authModel.user;

      return const Right(true);
    });
  }

  @override
  AuthenticatedUser get user => _user;

  @override
  Future<Either<Failure, bool>> signOut() async {
    final result = await authRepository.signOut();
    //TODO: разлогиниваем в офлайне?
    return result.fold(Left.new, (success) async {
      await _clear();
      return Right(success);
    });
  }

  Future<void> _clear() async {
    await authRepository.deletePinCode();
    await authRepository.deleteAccessToken();

    await authRepository.deleteUserType();
    await authRepository.deleteUseBiometric();
  }

  bool _isChecked = false;

  @override
  bool get isChecked {
    if (_isChecked == false) {
      _isChecked = true;
      return false;
    }
    return _isChecked;
  }

  @override
  set isChecked(bool value) {
    _isChecked = value;
  }
}

class AuthManagerSettings {
  AuthManagerSettings({required this.useBiometric, required this.useLocalAuth});

  final bool useBiometric;
  final bool useLocalAuth;
}
