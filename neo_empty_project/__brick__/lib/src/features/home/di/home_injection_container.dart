import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class HomeInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<HomeDataSource>(
      () => buildDependency<HomeDataSource>(
        useMock: useMock,
        mockFactoryFunc: MockHomeDataSource.new,
        factoryFunc: () => RestHomeDataSource(sl<ApiDioClient>().dio),
      ),
    );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<HomeRepository>(() => HomeRepositoryImpl(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory(() => HomeCubit(repository: sl()));
  }
}
