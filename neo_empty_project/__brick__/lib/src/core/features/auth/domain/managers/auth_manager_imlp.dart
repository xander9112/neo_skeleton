import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthManagerImpl extends AuthManager<UserEntity> {
  AuthManagerImpl({
    required this.authRepository,
    required this.biometricRepository,
    required super.settings,
    this.demoUserRepository,
  });

  final DemoUserRepository? demoUserRepository;

  final AuthRepository<AuthModel, UserEntity> authRepository;

  final BiometricRepository biometricRepository;

  final BehaviorSubject<UserEntity> _user =
      BehaviorSubject.seeded(const UserEntity.notAuthenticated());

  @override
  bool get mocked => _user.value.isDemo;

  bool _blocked = false;

  @override
  bool get blocked => _blocked;

  bool _isReady = false;

  @override
  bool get isReady => _isReady;

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

  @override
  bool get isAuth => _user.value.isAuthenticated;

  @override
  Future<bool> get hasPinCode => authRepository.hasPinCode();

  @override
  BehaviorSubject<UserEntity> get user => _user;

  @override
  Future<void> init() async {
    await _checkUserBlocking();

    final bool hasPinCode = await authRepository.hasPinCode();
    final bool hasToken = await authRepository.hasAccessToken();

    if (settings.useLocalAuth) {
      settings.useLocalAuth = await authRepository.useLocalAuth();
    }

    if (settings.useLocalAuth && (!hasPinCode && !kIsWeb)) {
      await signOut(remote: false);

      _user.sink.add(const UserEntity.notAuthenticated());

      _isReady = true;

      return;
    }

    if (hasToken) {
      await verify();
    }

    await authRepository.getCurrentUser().then(
          (user) => user.fold(
            (l) => _user.sink.add(const UserEntity.notAuthenticated()),
            (r) => _user.sink.add(r),
          ),
        );

    _isReady = true;

    notifyListeners();
  }

  @override
  Future<Either<Failure, bool>> signIn(String login, String password) async {
    final isDemoUser = await _checkDemoUser(login, password);

    if (isDemoUser) {
      return _initDemoUser();
    }

    final result = await authRepository.signIn(login, password);

    return result.fold(Left.new, (authModel) async {
      await authRepository.setAccessToken(authModel.token);

      _user.sink.add(authModel.user);

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
  Future<void> block({Duration? value}) async {
    await authRepository
        .blockUser(DateTime.now().add(value ?? EnvVariables.blockSeconds));

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

  Future<bool> _checkDemoUser(String login, String password) async {
    return demoUserRepository?.signIn(login, password) ?? Future.value(false);
  }

  Future<Either<Failure, bool>> _initDemoUser() async {
    await authRepository.setAccessToken('demo');

    _user.sink.add(AuthenticatedUser.demo);

    await authRepository.setCurrentUser(_user.value);

    notifyListeners();

    return const Right(true);
  }

  Future<void> _clear() async {
    await authRepository.deletePinCode();

    await authRepository.deleteAccessToken();

    await authRepository.deleteUseLocalAuth();

    await biometricRepository.deleteUseBiometric();

    _locked = true;

    _user.sink.add(const UserEntity.notAuthenticated());

    notifyListeners();
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
  Future<Either<Failure, UserEntity>> verify() async {
    /// Проверка на наличие обновление и другие проверки

    if (mocked) {
      _user.sink.add(AuthenticatedUser.demo);

      notifyListeners();

      return Right(_user.value);
    }

    return authRepository.verify();
  }

  @override
  Future<void> removePinCode() {
    return authRepository.deletePinCode();
  }

  Future<void> _checkUserBlocking() async {
    _blocked = false;

    final DateTime? value = await authRepository.getBlockTime();

    if (value != null) {
      if (value.difference(DateTime.now()).inSeconds > 0) {
        _blocked = true;
      }
    }
  }
}

class AuthManagerSettings {
  AuthManagerSettings({required this.useBiometric, required this.useLocalAuth});

  final bool useBiometric;
  late bool useLocalAuth;
}
