import 'package:local_auth/local_auth.dart';
import 'package:settings/src/_src.dart';

class BiometricRepositoryImpl implements BiometricRepository {
  BiometricRepositoryImpl({
    required UserSecurityStorage userSecurityStorage,
  }) : _userSecurityStorage = userSecurityStorage;

  final UserSecurityStorage _userSecurityStorage;

  LocalAuthentication get localAuth => LocalAuthentication();

  @override
  Future<bool> authenticate() async {
    try {
      await localAuth.stopAuthentication();

      return await localAuth.authenticate(
        localizedReason: SettingsI18n.signInToAccessTheApp,
        authMessages: [],
      );
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> get isAvailable => localAuth.canCheckBiometrics;

  @override
  Future<List<BiometricTypeModel>> get getAvailableBiometrics async {
    try {
      final availableTypes = await localAuth.getAvailableBiometrics();

      return availableTypes.map((e) {
        switch (e) {
          case BiometricType.face:
            return BiometricTypeModel.face;
          case BiometricType.fingerprint:
            return BiometricTypeModel.fingerprint;
          case BiometricType.iris:
            return BiometricTypeModel.iris;
          case BiometricType.strong:
            return BiometricTypeModel.strong;
          case BiometricType.weak:
            return BiometricTypeModel.weak;
        }
      }).toList();
    } catch (_) {
      return <BiometricTypeModel>[];
    }
  }

  @override
  Future<BiometricSupportModel> getBiometricModel() async {
    var status = BiometricStatus.installed;

    BiometricTypeModel? type;

    final available = await isAvailable;

    if (!available) {
      status = BiometricStatus.notAvailable;
    }

    final availableBiometrics = await getAvailableBiometrics;

    if (availableBiometrics.isEmpty) {
      status = BiometricStatus.notAvailable;
    } else {
      status = BiometricStatus.available;

      if (availableBiometrics.contains(BiometricTypeModel.face)) {
        type = BiometricTypeModel.face;
      } else {
        type = BiometricTypeModel.fingerprint;
      }
    }

    return BiometricSupportModel(
      status: status,
      useBiometric: await _userSecurityStorage.useBiometric ?? false,
      type: type,
    );
  }

  @override
  Future<bool> get isBiometricSupport async {
    try {
      return await isAvailable && await isDeviceSupported;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> get isDeviceSupported => localAuth.isDeviceSupported();

  @override
  Future<bool?> onInitBiometric() async {
    if (!(await isAvailable)) {
      return null;
    }

    if ((await getAvailableBiometrics).isEmpty) {
      return null;
    }

    final didAuthenticate = await authenticate();

    return didAuthenticate;
  }

  @override
  Future<void> setUseBiometric({required bool value}) {
    return _userSecurityStorage.setUseBiometric(value);
  }

  @override
  Future<void> deleteUseBiometric() {
    return _userSecurityStorage.removeUseBiometric();
  }
}
