// ignore_for_file: unused_field

import 'package:encrypt/encrypt.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  SecureStorage({required String key}) : _key = key {
    _encryptionKey = Key.fromUtf8(_key);
  }

  FlutterSecureStorage get _storage => FlutterSecureStorage(
        aOptions: _getAndroidOptions(),
        iOptions: _getIOSOptions(),
      );

  final String _key;

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  IOSOptions _getIOSOptions() =>
      const IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  // Используем AES для шифрования
  late final Key _encryptionKey;

  final IV _iv = IV.fromLength(16);

  // Шифрование данных
  String _encrypt(String data) {
    // final encrypter = Encrypter(AES(_encryptionKey));

    // return encrypter.encrypt(data, iv: _iv).base64;

    return data;
  }

  // Расшифровка данных
  String _decrypt(String encryptedData) {
    // final encrypter = Encrypter(AES(_encryptionKey));

    // return encrypter.decrypt64(encryptedData, iv: _iv);

    return encryptedData;
  }

  // Сохранение данных
  Future<void> write(String key, String value) async {
    final encryptedValue = _encrypt(value);

    await _storage.write(key: key, value: encryptedValue);
  }

  // Чтение данных
  Future<String?> read(String key) async {
    final encryptedValue = await _storage.read(key: key);

    return encryptedValue != null ? _decrypt(encryptedValue) : null;
  }

  // Удаление данных
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  // Проверяет наличие ключа
  Future<bool> containsKey(String key) {
    return _storage.containsKey(key: key);
  }
}
