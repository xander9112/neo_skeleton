import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class BiometricRepositoryImpl implements BiometricRepository {
  @override
  Future<bool> authenticate() {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  // TODO: implement getAvailableBiometrics
  Future<List<BiometricType>> get getAvailableBiometrics =>
      throw UnimplementedError();

  @override
  Future<BiometricSupportModel> getBiometricModel() {
    // TODO: implement getBiometricModel
    throw UnimplementedError();
  }

  @override
  // TODO: implement isAvailable
  Future<bool> get isAvailable => throw UnimplementedError();

  @override
  // TODO: implement isBiometricSupport
  Future<bool> get isBiometricSupport => throw UnimplementedError();

  @override
  // TODO: implement isDeviceSupported
  Future<bool> get isDeviceSupported => throw UnimplementedError();

  @override
  Future<bool?> onInitBiometric() {
    // TODO: implement onInitBiometric
    throw UnimplementedError();
  }

  @override
  Future<void> setUseBiometric({required bool value}) {
    // TODO: implement setUseBiometric
    throw UnimplementedError();
  }
}
