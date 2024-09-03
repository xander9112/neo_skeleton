// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:{{name.snakeCase()}}/src/core/constants/_constants.dart';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  String? avatarToken;

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
        resetOnError: true,
      );

  Future<bool> get hasToken async =>
      (await _secureStorage.read(
        key: AppStorageKeys.token,
        aOptions: _getAndroidOptions(),
      )) !=
      null;

  Future<bool> get hasRefreshToken async =>
      (await _secureStorage.read(
        key: AppStorageKeys.refreshToken,
        aOptions: _getAndroidOptions(),
      )) !=
      null;

  Future<void> setToken(String value) {
    avatarToken = value;

    return _secureStorage.write(
      key: AppStorageKeys.token,
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> setRefreshToken(String value) {
    return _secureStorage.write(
      key: AppStorageKeys.refreshToken,
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> removeToken() {
    avatarToken = null;
    return _secureStorage.delete(
      key: AppStorageKeys.token,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> getToken() {
    return _secureStorage.read(
      key: AppStorageKeys.token,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> getRefreshToken() {
    return _secureStorage.read(
      key: AppStorageKeys.refreshToken,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> deleteRefreshToken() {
    return _secureStorage.delete(
      key: AppStorageKeys.refreshToken,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> get hasPinCode async =>
      (await _secureStorage.read(
        key: AppStorageKeys.pinCode,
        aOptions: _getAndroidOptions(),
      )) !=
      null;

  Future<void> setPinCode(String value) {
    return _secureStorage.write(
      key: AppStorageKeys.pinCode,
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> removePinCode() async {
    await setPinCode('');

    return _secureStorage.delete(
      key: AppStorageKeys.pinCode,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> comparePinCode(String value) async {
    final pinCode = await _secureStorage.read(
      key: AppStorageKeys.pinCode,
      aOptions: _getAndroidOptions(),
    );

    return pinCode == value;
  }

  Future<void> removeUseBiometric() async {
    await _secureStorage.write(
      key: AppStorageKeys.useBiometric,
      value: '',
      aOptions: _getAndroidOptions(),
    );

    return _secureStorage.delete(key: AppStorageKeys.useBiometric);
  }

  Future<void> setUseBiometric(bool value) {
    return _secureStorage.write(
      key: AppStorageKeys.useBiometric,
      value: value.toString(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool?> get useBiometric async {
    final useBiometric = await _secureStorage.read(
      key: AppStorageKeys.useBiometric,
      aOptions: _getAndroidOptions(),
    );

    if (useBiometric != null && useBiometric.isNotEmpty) {
      return useBiometric == 'true';
    }

    return null;
  }

  Future<void> setUseLocalAuth(bool value) {
    return _secureStorage.write(
      key: AppStorageKeys.useLocalAuth,
      value: value.toString(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> getUseLocalAuth() async {
    final useLocalAuth = await _secureStorage.read(
      key: AppStorageKeys.useLocalAuth,
      aOptions: _getAndroidOptions(),
    );

    if (useLocalAuth != null && useLocalAuth.isNotEmpty) {
      return useLocalAuth == 'true';
    }

    return true;
  }

  Future<void> removeUseLocalAuth() async {
    await _secureStorage.write(
      key: AppStorageKeys.useLocalAuth,
      value: '',
      aOptions: _getAndroidOptions(),
    );

    return _secureStorage.delete(key: AppStorageKeys.useLocalAuth);
  }

  Future<void> saveCurrentUser(String value) async {
    return _secureStorage.write(
      key: AppStorageKeys.currentUser,
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> getCurrentUser() async {
    return _secureStorage.read(
      key: AppStorageKeys.currentUser,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> removeCurrentUser() async {
    await saveCurrentUser('');

    await _secureStorage.delete(key: AppStorageKeys.currentUser);
    return null;
  }

  Future<void> blocUser(DateTime value) async {
    return _secureStorage.write(
      key: AppStorageKeys.blockUserDuration,
      value: value.toString(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> unBlocUser() async {
    return _secureStorage.delete(
      key: AppStorageKeys.blockUserDuration,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<DateTime?> getBlockTime() async {
    final String? value = await _secureStorage.read(
      key: AppStorageKeys.blockUserDuration,
      aOptions: _getAndroidOptions(),
    );

    if (value == null) {
      return null;
    }

    return DateTime.tryParse(value);
  }
}
