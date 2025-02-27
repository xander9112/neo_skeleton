import 'package:settings/src/_src.dart';

abstract class BiometricRepository {
  Future<List<BiometricTypeModel>> get getAvailableBiometrics;

  Future<bool> get isAvailable;

  Future<bool> get isDeviceSupported;

  Future<bool> get isBiometricSupport;

  Future<bool> authenticate();

  Future<bool?> onInitBiometric();

  Future<BiometricSupportModel> getBiometricModel();

  Future<void> setUseBiometric({required bool value});

  Future<void> deleteUseBiometric();
}
