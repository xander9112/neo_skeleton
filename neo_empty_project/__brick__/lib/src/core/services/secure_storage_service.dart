// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  String? avatarToken;

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
        resetOnError: true,
      );

  Future<bool> get hasToken async =>
      (await _secureStorage.read(
        key: 'token',
        aOptions: _getAndroidOptions(),
      )) !=
      null;

  Future<void> setToken(String value) {
    avatarToken = value;

    return _secureStorage.write(
      key: 'token',
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> removeToken() {
    avatarToken = null;
    return _secureStorage.delete(key: 'token', aOptions: _getAndroidOptions());
  }

  Future<String?> getToken() {
    return _secureStorage.read(key: 'token', aOptions: _getAndroidOptions());
  }

  Future<String?> getRefreshToken() {
    return _secureStorage.read(
      key: 'refreshToken',
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> get hasPinCode async =>
      (await _secureStorage.read(
        key: 'pinCode',
        aOptions: _getAndroidOptions(),
      )) !=
      null;

  Future<void> setPinCode(String value) {
    return _secureStorage.write(
      key: 'pinCode',
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> removePinCode() async {
    await setPinCode('');

    return _secureStorage.delete(
      key: 'pinCode',
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> comparePinCode(String pinCode) async {
    final pinCode = await _secureStorage.read(
      key: 'pinCode',
      aOptions: _getAndroidOptions(),
    );

    return pinCode == pinCode;
  }

  Future<void> removeUseBiometric() async {
    await _secureStorage.write(
      key: 'use_biometric',
      value: '',
      aOptions: _getAndroidOptions(),
    );

    return _secureStorage.delete(key: 'use_biometric');
  }

  Future<void> setUseBiometric(bool value) {
    return _secureStorage.write(
      key: 'use_biometric',
      value: value.toString(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool?> get useBiometric async {
    final useBiometric = await _secureStorage.read(
      key: 'use_biometric',
      aOptions: _getAndroidOptions(),
    );

    if (useBiometric != null && useBiometric.isNotEmpty) {
      return useBiometric == 'true';
    }

    return null;
  }

  Future<void> setUseLocalAuth(bool value) {
    return _secureStorage.write(
      key: 'use_local_auth',
      value: value.toString(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> getUseLocalAuth() async {
    final useLocalAuth = await _secureStorage.read(
      key: 'use_local_auth',
      aOptions: _getAndroidOptions(),
    );

    if (useLocalAuth != null && useLocalAuth.isNotEmpty) {
      return useLocalAuth == 'true';
    }

    return {{#useLocalAuth}}true{{/useLocalAuth}}{{^useLocalAuth}}false{{/useLocalAuth}};
  }
}
