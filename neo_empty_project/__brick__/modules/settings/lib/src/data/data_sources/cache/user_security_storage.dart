import 'package:core/core.dart';

class UserSecurityStorage {
  UserSecurityStorage({required SecureStorage storage}) : _storage = storage;

  final SecureStorage _storage;

  final String _pinCodeKey = 'pinCode';
  final String _useBiometricKey = 'use_biometric';
  final String _useLocalAuthKey = 'use_local_auth';

  Future<bool> get hasPinCode => _storage.containsKey(_pinCodeKey);

  Future<bool?> get useBiometric async {
    final useBiometric = await _storage.read(_useBiometricKey);

    if (useBiometric != null && useBiometric.isNotEmpty) {
      return useBiometric == 'true';
    }

    return null;
  }

  Future<void> setPinCode(String value) {
    return _storage.write(_pinCodeKey, value);
  }

  Future<void> removePinCode() {
    return _storage.delete(_pinCodeKey);
  }

  Future<bool> comparePinCode(String value) async {
    final _pinCode = await _storage.read(_pinCodeKey);

    return _pinCode == value;
  }

  Future<void> removeUseBiometric() {
    return _storage.delete(_useBiometricKey);
  }

  Future<void> setUseBiometric(bool value) {
    return _storage.write(_useBiometricKey, value.toString());
  }

  Future<void> setUseLocalAuth(bool value) {
    return _storage.write(_useLocalAuthKey, value.toString());
  }

  Future<bool> getUseLocalAuth() async {
    final _useLocalAuth = await _storage.read(_useLocalAuthKey);

    if (_useLocalAuth != null && _useLocalAuth.isNotEmpty) {
      return _useLocalAuth == 'true';
    }

    return true;
  }

  Future<void> removeUseLocalAuth() {
    return _storage.delete(_useLocalAuthKey);
  }
}
