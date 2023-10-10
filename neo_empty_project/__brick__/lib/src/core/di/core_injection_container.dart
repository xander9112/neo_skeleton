import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

abstract class ICoreInjection {
  static final GetIt sl = GetIt.instance;

  Future<void> initRouter() async {}

  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {}

  Future<void> initRepositories({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {}

  Future<void> initUseCases({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {}

  Future<void> initState({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {}

  @mustCallSuper
  Future<void> init({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    await initRouter();
    await initProviders({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
    await initRepositories({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
    await initUseCases({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
    await initState({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
  }

  T Function<T>({
    required bool useMock,
    required T Function() factoryFunc,
    required T Function() mockFactoryFunc,
  }) buildDependency = <T>({
    required bool useMock,
    required T Function() factoryFunc,
    required T Function() mockFactoryFunc,
  }) {
    if (sl<AuthManager<AuthenticatedUser>>().mocked || useMock) {
      return mockFactoryFunc();
    }

    return factoryFunc();
  };

  T Function<T>(
    bool useMock,
    EnvConfig env,
    T Function(EnvConfig) factoryFunc,
    T Function(EnvConfig) mockFactoryFunc,
  ) buildDependencyWithEnv = <T>(
    useMock,
    env,
    T Function(EnvConfig) factoryFunc,
    T Function(EnvConfig) mockFactoryFunc,
  ) {
    if (sl<AuthManager<AuthenticatedUser>>().mocked || useMock) {
      return mockFactoryFunc(env);
    }

    return factoryFunc(env);
  };
}

class CoreInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerLazySingleton<AppAutoRouter>(
      AppAutoRouter.new,
    );
  }

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl
      ..registerLazySingleton(SecureStorageService.new)
      ..registerSingleton<DialogService>(DialogService())
      ..registerSingleton<ApiDioClient>(
        ApiDioClient(
          Uri.parse(dotenv.env['API_URL'] ?? ''),
          storage: sl(),
        ),
      );
  }

  @override
 Future<void> initState({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
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
        setNewPinCodeUseCase: sl(),
        getGlobalAuthSettings: sl(),
        setLocalAuthUseCase: sl(),
      ),
    );
  }
}
