// ignore: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_setters_without_getters

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthManagerImpl extends AuthManager<AuthenticatedUser> {
  AuthManagerImpl({
    required this.authRepository,
    required this.biometricRepository,
    required super.settings,
    this.demoUserRepository,
  });

  final DemoUserRepository? demoUserRepository;

  final AuthRepository<AuthModel, AuthenticatedUser> authRepository;

  final BiometricRepository biometricRepository;

  @override
  bool get mocked => _mocked;

  bool _blocked = false;

  @override
  bool get blocked => _blocked;

  AuthenticatedUser _user = AuthenticatedUser.empty;

  bool _authenticated = false;

  bool _mocked = false;

  @override
  void lock() {
    if (kIsWeb) {
      return;
    }

    _locked = true;

    notifyListeners();
  }

  @override
  void unlock() {
    _locked = false;

    notifyListeners();
  }

  @override
  Future<void> block() async {
    await authRepository
        .blocUser(DateTime.now().add(const Duration(seconds: 60)));

    _blocked = true;

    notifyListeners();
  }

  @override
  Future<void> unblock() async {
    await authRepository.unBlocUser();

    _blocked = false;

    notifyListeners();
  }

  @override
  Future<Duration> getBlockTime() async {
    final DateTime? value = await authRepository.getBlockTime();

    if (value != null) {
      if (value.difference(DateTime.now()).inSeconds > 0) {
        return value.difference(DateTime.now());
      }
    }

    return Duration.zero;
  }

  @override
  Future<void> init() async {
    final DateTime? value = await authRepository.getBlockTime();
    final bool hasPinCode = await authRepository.hasPinCode();
    final bool hasToken = await authRepository.hasAccessToken();

    settings.useLocalAuth = await authRepository.useLocalAuth();

    if (value != null) {
      if (value.difference(DateTime.now()).inSeconds > 0) {
        _blocked = true;
      }
    }

    if (settings.useLocalAuth && (!hasPinCode && !kIsWeb)) {
      await signOut(remote: false);

      authenticated = false;

      return;
    }

    if (hasToken) {
      if (await authRepository.getAccessToken() == 'demo') {
        _mocked = true;
      }
      
      await verify();
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
    if (kIsWeb) {
      return false;
    }

    if (settings.useLocalAuth) {
      return _locked;
    } else {
      return false;
    }
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
  AuthenticatedUser get user => _user;

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

      return const Right(true);
    }

    final result = await authRepository.signIn(login, password);

    return result.fold(Left.new, (authModel) async {
      await authRepository.setAccessToken(authModel.token);

      _user = authModel.user;

      authenticated = true;

      return const Right(true);
    });
  }

  @override
  Future<Either<Failure, bool>> signOut({bool remote = true}) async {
    if (mocked) {
      await _clear();

      return const Right(true);
    }

    if (remote) {
      final hasToken = await authRepository.hasAccessToken();

      if (!hasToken) {
        await _clear();

        return const Right(true);
      }

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
        useBiometric: false,
      );
    }

    return biometricRepository.getBiometricModel();
  }

  @override
  Future<void> setUseBiometry(bool value) async {
    await biometricRepository.setUseBiometric(value: value);

    notifyListeners();
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
