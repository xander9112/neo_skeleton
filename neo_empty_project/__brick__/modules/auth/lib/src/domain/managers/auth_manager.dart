// // ignore: lines_longer_than_80_chars
// // ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_setters_without_getters

// import 'package:dartz/dartz.dart';
// import 'package:flutter/foundation.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:{{appName.snakeCase()}}/src/core/_core.dart';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:settings/settings.dart';

abstract class AuthManager<U> extends ChangeNotifier {
  late AuthSettings settings;

  BehaviorSubject<U> get user;

  bool get isAuth;

  bool get locked;

  bool get blocked;

  bool get isReady;

  bool get mocked;

  Future<bool> get hasPinCode;

  void lock();

  void unlock();

  Future<void> block({Duration value});

  Future<void> unblock();

  Future<Duration> getBlockTime();

  Future<void> init();

  Future<Either<Failure, U>> verify();

  Future<Either<Failure, bool>> signIn(String login, String password);

  Future<Either<Failure, bool>> signOut({bool remote = true});

  Future<void> setPinCode(String pinCode);

  Future<void> removePinCode();

  Future<bool> checkPinCode(String pinCode);

  // Future<void> setUseBiometry(bool value);

  Future<void> setUseLocalAuth(bool value);

  // Future<bool> checkBiometry();
}
