import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// We do not store user credentials, API tokens, secret API keys
/// in local storage, for that we make use of flutter_secure_storage
/// which stores data in the Android Keystore and Apple keychain with
/// platform-specific encryption technique. In this file, there will be
/// getters and setters for each and every data to be stored in platform
/// secure storage.

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
        resetOnError: true,
      );

  final IOSOptions iOptions = const IOSOptions(
    accessibility: IOSAccessibility.first_unlock,
  );

  final MacOsOptions mOptions = const MacOsOptions();

  Future<bool> get hasToken async =>
      (await _secureStorage.read(
        key: 'token',
        aOptions: _getAndroidOptions(),
        iOptions: iOptions,
        mOptions: mOptions,
      )) !=
      null;

  Future<void> setToken(String value) {
    return _secureStorage.write(
      key: 'token',
      value: value,
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );
  }

  Future<void> removeToken() {
    return _secureStorage.delete(
      key: 'token',
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );
  }

  Future<String?> getToken() {
    return _secureStorage.read(
      key: 'token',
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );
  }

  Future<String?> getRefreshToken() {
    return _secureStorage.read(
      key: 'refreshToken',
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );
  }

  Future<bool> get hasPinCode async =>
      (await _secureStorage.read(
        key: 'pinCode',
        aOptions: _getAndroidOptions(),
        iOptions: iOptions,
        mOptions: mOptions,
      )) !=
      null;

  Future<void> setPinCode(String value) {
    return _secureStorage.write(
      key: 'pinCode',
      value: value,
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );
  }

  Future<void> removePinCode() {
    return _secureStorage.delete(
      key: 'pinCode',
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );
  }

  Future<bool> comparePinCode(String pinCode) async {
    final String? _pinCode = await _secureStorage.read(
      key: 'pinCode',
      aOptions: _getAndroidOptions(),
      iOptions: iOptions,
      mOptions: mOptions,
    );

    return _pinCode == pinCode;
  }
}
