import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:skeleton_core/skeleton_core.dart';

class MainInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<MainDataSource>(
      () => buildDependency<MainDataSource>(
        useMock: useMock,
        mockFactoryFunc: MockMainDataSource.new,
        factoryFunc: () => RestMainDataSource(sl<ApiDioClient>().dio),
      ),
    );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<MainRepository>(() => MainRepositoryImpl(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
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
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    await super.init(env, useMock: useMock);

    await HomeInjection().init(env, useMock: useMock);
  }
}
