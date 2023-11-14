import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class SettingsInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    if (useMock) {
      sl.registerFactory<SettingsDataSource>(
        MockSettingsDataSource.new,
      );
    } else {
      sl.registerFactory<SettingsDataSource>(
        () => RestSettingsDataSource(
          sl<ApiDioClient>().dio,
        ),
      );
    }
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<SettingsRepository>(() => SettingsRepositoryImpl(sl()));
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
      ),
    );
  }
}
