import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

@InjectableInit.microPackage()
initMicroPackage() {}

@module
abstract class SettingsDiModule {
  @lazySingleton
  @preResolve
  Future<SettingsCubit> settingsCubit(
    GetBiometricSupportModel getBiometricSupportModel,
    SetBiometrySettingUseCase setBiometrySettingUseCase,
    SetLocalAuthUseCase setLocalAuthUseCase,
    GetLocalAuthUseCase getLocalAuthUseCase,
    SettingsRepository repository,
  ) async {
    final _appInfo = await AppInfo.getAppInfo();
    final _deviceInfo = await AppInfo.getDeviceInfo();
    return SettingsCubit(
      appInfo: _appInfo,
      deviceInfo: _deviceInfo,
      getBiometricSupportModel: getBiometricSupportModel,
      setBiometrySettingUseCase: setBiometrySettingUseCase,
      setLocalAuthUseCase: setLocalAuthUseCase,
      getLocalAuthUseCase: getLocalAuthUseCase,
      repository: repository,
    );
  }
}
