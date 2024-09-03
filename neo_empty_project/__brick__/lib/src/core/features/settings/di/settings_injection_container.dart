import 'package:get_it/get_it.dart';
import 'package:skeleton_core/skeleton_core.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SettingsInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<SettingsDataSource>(
        () => buildDependency<SettingsDataSource>(
          useMock: useMock,
          mockFactoryFunc: MockSettingsDataSource.new,
          factoryFunc: () => RestSettingsDataSource(sl<ApiDioClient>().dio),
        ),
      )
      ..registerFactory<DevicePreferencesDataSource>(
        () => buildDependency<DevicePreferencesDataSource>(
          useMock: useMock,
          mockFactoryFunc: SharedDevicePreferencesDataSource.new,
          factoryFunc: SharedDevicePreferencesDataSource.new,
        ),
      );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<DevicePreferencesRepository>(
        () => DevicePreferencesRepositoryImlp(dataSource: sl()),
      )
      ..registerFactory<SettingsRepository>(() => SettingsRepositoryImpl(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    final appInfo = await AppInfo.getAppInfo();
    final deviceInfo = await AppInfo.getDeviceInfo();

    sl.registerLazySingleton(
      () => SettingsCubit(
        appInfo: appInfo,
        deviceInfo: deviceInfo,
        subscriptAuthEventUseCase: sl(),
        getBiometricSupportModel: sl(),
        getAuthUseCase: sl(),
        setBiometrySettingUseCase: sl(),
        getGlobalAuthSettings: sl(),
        setLocalAuthUseCase: sl(),
        manager: sl(),
        repository: sl(),
      ),
    );
  }
}
