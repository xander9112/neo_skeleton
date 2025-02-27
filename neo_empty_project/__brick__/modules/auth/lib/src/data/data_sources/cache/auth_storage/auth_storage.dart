import 'package:core/core.dart';

class AuthStorage {
  AuthStorage({required SecureStorage storage}) : _storage = storage;

  final SecureStorage _storage;

  final String _tokenKey = 'token';
  final String _refreshTokenKey = 'refreshToken';
  final String _currentUserKey = 'current_user';
  final String _blockUserDurationKey = 'block_user_duration';

  Future<bool> get hasToken => _storage.containsKey(_tokenKey);

  Future<bool> get hasRefreshToken => _storage.containsKey(_refreshTokenKey);

  Future<void> setToken(String value) {
    return _storage.write(_tokenKey, value);
  }

  Future<void> setRefreshToken(String value) {
    return _storage.write(_refreshTokenKey, value);
  }

  Future<void> removeToken() {
    return _storage.delete(_tokenKey);
  }

  Future<String?> getToken() {
    return _storage.read(_tokenKey);
  }

  Future<String?> getRefreshToken() {
    return _storage.read(_refreshTokenKey);
  }

  Future<void> deleteRefreshToken() {
    return _storage.delete(_refreshTokenKey);
  }

  Future<void> saveCurrentUser(String value) {
    return _storage.write(_currentUserKey, value);
  }

  Future<String?> getCurrentUser() async {
    return _storage.read(_currentUserKey);
  }

  Future<void> removeCurrentUser() async {
    return _storage.delete(_currentUserKey);
  }

  Future<void> blockUser(DateTime value) {
    return _storage.write(_blockUserDurationKey, value.toString());
  }

  Future<void> unBlockUser() {
    return _storage.delete(_blockUserDurationKey);
  }

  Future<DateTime?> getBlockTime() async {
    final String? value = await _storage.read(_blockUserDurationKey);

    if (value == null) {
      return null;
    }

    return DateTime.tryParse(value);
  }
}
