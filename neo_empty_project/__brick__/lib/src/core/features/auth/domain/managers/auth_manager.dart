// ignore: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_setters_without_getters

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

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

  Future<Either<Failure, bool>> signOut({bool remote = true});

  bool get isChecked;

  set isChecked(bool value);

  Future<bool> get hasPinCode;

  Future<void> setPinCode(String pinCode);

  Future<void> removePinCode();

  Future<bool> checkPinCode(String pinCode);

  Future<BiometricSupportModel> getBiometricSupportModel();

  Future<void> setUseBiometry(bool value);

  Future<void> setUseLocalAuth(bool value);

  Future<bool> checkBiometry();

  Future<Either<Failure, U>> verify();

  bool get mocked;
}

class AuthManagerImpl extends AuthManager<AuthenticatedUser> {
  AuthManagerImpl({
    required this.authRepository,
    required this.biometricRepository,
    required super.settings,
  }) {
    init();
  }

  @override
  bool get mocked => _mocked;

  Future<void> init() async {
    settings.useLocalAuth = await authRepository.useLocalAuth();

    if (settings.useLocalAuth && !await authRepository.hasPinCode()) {
      await signOut();

      authenticated = false;

      return;
    }

    await authRepository.getCurrentUser().then(
          (user) => user.fold(
            (l) => _user = AuthenticatedUser.empty,
            (r) => _user = r,
          ),
        );

    if (user == AuthenticatedUser.demo) {
      _mocked = true;
      notifyListeners();
    }


  }

  final AuthRepository<AuthModel, AuthenticatedUser> authRepository;

  final BiometricRepository biometricRepository;

  AuthenticatedUser _user = AuthenticatedUser.empty;

  bool _authenticated = false;

  bool _mocked = false;


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
    if (!settings.useLocalAuth) {
      return false;
    } else {
      return _locked;
    }
  }

  @override
  set locked(bool value) {
    _locked = value;
    notifyListeners();
  }

  Future<bool> _checkDemoUser(String login, String password) async {
    return demoUserRepository?.signIn(login, password) ?? Future.value(false);
  }

  @override
  Future<Either<Failure, bool>> signIn(String login, String password) async {

    final isDemoUser = await _checkDemoUser(login, password);

    if (isDemoUser) {
      await authRepository.setAccessToken('demo');

      _user = AuthenticatedUser.demo;

      await authRepository.setCurrentUser(user);

      _mocked = true;

      notifyListeners();
      debugPrint('<AuthManager> Mocked auth =  true');
      return const Right(true);
    }


    final result = await authRepository.signIn(login, password);

    return result.fold(Left.new, (authModel) async {
      await authRepository.setAccessToken(authModel.token);

      _user = authModel.user;

      return const Right(true);
    });
  }

  @override
  AuthenticatedUser get user => _user;

  @override
  Future<Either<Failure, bool>> signOut({bool remote = true}) async {

    if (mocked) {
      await _clear();
      return const Right(true);
    }

    if (remote) {
      final result = await authRepository.signOut();

      return result.fold((failure) async {
        await _clear();

        return Left(failure);
      }, (success) async {
        await _clear();

        return Right(success);
      });
    } else {
      await _clear();

      return const Right(true);
    }
  }

  Future<void> _clear() async {
    await authRepository.deletePinCode();

    await authRepository.deleteAccessToken();

    await authRepository.deleteUseLocalAuth();

    await biometricRepository.deleteUseBiometric();

    _locked = true;

    _mocked = false;

    authenticated = false;

    _user = AuthenticatedUser.empty;
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

  @override
  Future<bool> get hasPinCode => authRepository.hasPinCode();

  @override
  Future<void> setPinCode(String pinCode) async {
    await authRepository.setPinCode(pinCode);
  }

  @override
  Future<bool> checkPinCode(String pinCode) {
    return authRepository.comparePinCode(pinCode);
  }

  @override
  Future<BiometricSupportModel> getBiometricSupportModel() async {
    if (!settings.useBiometric) {
      return const BiometricSupportModel(
        status: BiometricStatus.notAvailable,
        useBiometric: false,
      );
    }

    return biometricRepository.getBiometricModel();
  }

  @override
  Future<void> setUseBiometry(bool value) {
    notifyListeners();
    return biometricRepository.setUseBiometric(value: value);
  }

  @override
  Future<void> setUseLocalAuth(bool value) {
    return authRepository.setUseLocalAuth(value);
  }

  @override
  Future<bool> checkBiometry() async {
    return biometricRepository.authenticate();
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> verify() async {
    /// Проверка на наличие обновление и другие проверки
    /// 
    if (mocked) {
      _user = AuthenticatedUser.demo;

      _mocked = true;
      notifyListeners();

      return Right(_user);
    }

    isChecked = true;

    await Future<void>.delayed(const Duration(seconds: 2));

    return authRepository.verify();
  }

  @override
  Future<void> removePinCode() {
    return authRepository.deletePinCode();
  }
}

class AuthManagerSettings {
  AuthManagerSettings({required this.useBiometric, required this.useLocalAuth});

  final bool useBiometric;
  late bool useLocalAuth;
}
