import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

class SettingsDI extends DI {
  static final GetIt sl = DI.sl;

  @override
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    final bool isMock = Mocked.isMocked || useMock;

    sl
      ..registerFactory<UserSecurityStorage>(
        () => UserSecurityStorage(storage: sl()),
      )
      ..registerFactory<SettingsDataSource>(
        () => buildDependency<SettingsDataSource>(
          useMock: isMock,
          mockFactoryFunc: MockSettingsDataSource.new,
          factoryFunc: () =>
              RestSettingsDataSource(sl<IHttpClient<Dio>>().client),
        ),
      );
  }

  @override
  Future<void> initRepositories(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl
      ..registerFactory<BiometricRepository>(
        () => BiometricRepositoryImpl(userSecurityStorage: sl()),
      )
      ..registerFactory<SettingsRepository>(
        () => SettingsRepositoryImpl(
          sharedStorage: sl(),
        ),
      );
  }

  @override
  Future<void> initUseCases(FlavorStatus flavor, {bool useMock = false}) async {
    sl
      ..registerFactory(() => SetPinCodeUseCase(sl()))
      ..registerFactory(() => CheckBiometryUseCase(sl()))
      ..registerFactory(() => GetBiometricSupportModel(sl()))
      ..registerFactory(() => SetBiometryUseCase(sl()))
      ..registerFactory(() => SetBiometrySettingUseCase(sl()))
      ..registerFactory(() => CheckPinCodeFromDialogUseCase(sl()))
      ..registerFactory(() => GetLocalAuthUseCase(sl()))
      ..registerFactory(() => SetLocalAuthUseCase(sl()));
  }

  @override
  Future<void> initState(FlavorStatus flavor, {bool useMock = false}) async {
    final _appInfo = await AppInfo.getAppInfo();
    final _deviceInfo = await AppInfo.getDeviceInfo();

    sl
      ..registerFactory(
        () => ChangePinCodeCubit(
          sl(),
          sl(),
        ),
      )
      ..registerLazySingleton(
        () => SettingsCubit(
          repository: sl(),
          appInfo: _appInfo,
          deviceInfo: _deviceInfo,
          getBiometricSupportModel: sl(),
          setBiometrySettingUseCase: sl(),
          setLocalAuthUseCase: sl(),
          getLocalAuthUseCase: sl(),
        ),
      );
  }
}
