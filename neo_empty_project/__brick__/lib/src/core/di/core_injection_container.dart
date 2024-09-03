import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

abstract class ICoreInjection {
  static final GetIt sl = GetIt.instance;

  Future<void> initRouter() async {}

  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initUseCases(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initState(EnvConfig env, {bool useMock = false}) async {}

  @mustCallSuper
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    await initRouter();
    await initProviders(env, useMock: useMock);
    await initRepositories(env, useMock: useMock);
    await initUseCases(env, useMock: useMock);
    await initState(env, useMock: useMock);
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
    if (useMock) {
      return mockFactoryFunc();
    }

    return factoryFunc();
  };

  T Function<T>(
    bool useMock,
    EnvConfig env,
    T Function(
      EnvConfig env,
    ) factoryFunc,
    T Function(
      EnvConfig env,
    ) mockFactoryFunc,
  ) buildDependencyWithEnv = <T>(
    useMock,
    env,
    T Function(
      EnvConfig env,
    ) factoryFunc,
    T Function(
      EnvConfig env,
    ) mockFactoryFunc,
  ) {
    /// Не использовать AuthManager
    // if (sl<AuthManager<UserEntity>>().mocked || useMock) {
    if (useMock) {
      return mockFactoryFunc(env);
    }

    return factoryFunc(env);
  };
}

class CoreInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerLazySingleton<AppRouter>(
      () => AppRouter(
        navigatorKey: DialogService.navigatorKey,
      ),
    );
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerLazySingleton(
        () => TalkerFlutter.init(settings: TalkerSettings()),
      )
      ..registerLazySingleton(SecureStorageService.new)
      ..registerSingleton<DialogService>(DialogService())
      ..registerSingleton<ApiDioClient>(
        ApiDioClient(EnvVariables.apiUrl, storage: sl()),
      );

    sl<ApiDioClient>().dio.interceptors.add(
          TalkerDioLogger(
            talker: sl(),
            settings: const TalkerDioLoggerSettings(
              printRequestHeaders: true,
              printResponseHeaders: true,
            ),
          ),
        );
  }

  @override
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    sl.registerSingleton(AppLogger());

    await super.init(env, useMock: useMock);

    await SettingsInjection().init(env, useMock: useMock);
  }
}
