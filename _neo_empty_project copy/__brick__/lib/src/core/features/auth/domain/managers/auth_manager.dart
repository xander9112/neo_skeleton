// ignore: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_setters_without_getters

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
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

  bool get blocked;

  void lock();

  void unlock();

  Future<void> block();

  Future<void> unblock();

  Future<Duration> getBlockTime();

  Future<void> init();

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
