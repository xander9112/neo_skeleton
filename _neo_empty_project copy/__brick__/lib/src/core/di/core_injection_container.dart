import 'package:auto_route/auto_route.dart';
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
    {{#useFlavor}}EnvConfig env,{{/useFlavor}}
    T Function({{#useFlavor}}EnvConfig env,{{/useFlavor}}) factoryFunc,
    T Function({{#useFlavor}}EnvConfig env,{{/useFlavor}}) mockFactoryFunc,
  ) buildDependencyWithEnv = <T>(
    useMock,
    {{#useFlavor}}env,{{/useFlavor}}
    T Function({{#useFlavor}}EnvConfig env,{{/useFlavor}}) factoryFunc,
    T Function({{#useFlavor}}EnvConfig env,{{/useFlavor}}) mockFactoryFunc,
  ) {
    if (sl<AuthManager<AuthenticatedUser>>().mocked || useMock) {
      return mockFactoryFunc({{#useFlavor}}env{{/useFlavor}});
    }

    return factoryFunc({{#useFlavor}}env{{/useFlavor}});
  };
}

class CoreInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerLazySingleton<RootStackRouter>(
      () => AppRouter(
        navigatorKey: DialogService.navigatorKey,
      ),
    );
  }

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
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
  Future<void> init({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    await super.init({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);

    await SettingsInjection().init({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
  }
}
