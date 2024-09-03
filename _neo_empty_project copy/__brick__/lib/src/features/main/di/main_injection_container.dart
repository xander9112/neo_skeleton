import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class MainInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory<MainDataSource>(
      () => buildDependency<MainDataSource>(
        useMock: useMock,
        mockFactoryFunc: MockMainDataSource.new,
        factoryFunc: () => RestMainDataSource(sl<ApiDioClient>().dio),
      ),
    );
  }

  @override
  Future<void> initRepositories({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory<MainRepository>(() => MainRepositoryImpl(sl()));
  }

  @override
  Future<void> initState({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory<MainCubit>(
      () => buildDependency<MainCubit>(
        useMock: useMock,
        factoryFunc: () => MainCubit(
          false,
          eventBus: sl(),
        ),
        mockFactoryFunc: () => MainCubit(
          true,
          eventBus: sl(),
        ),
      ),
    );
  }

  @override
  Future<void> init({{#useFlavor}}EnvConfig env, {{/useFlavor}}{bool useMock = false}) async {
    await super.init({{#useFlavor}}env, {{/useFlavor}} useMock: useMock);

    await HomeInjection().init({{#useFlavor}}env, {{/useFlavor}}useMock: useMock);
  }
}
