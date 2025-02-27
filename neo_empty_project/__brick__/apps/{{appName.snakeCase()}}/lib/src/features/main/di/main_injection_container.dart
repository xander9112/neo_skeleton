import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:dependencies/dependencies.dart';

class MainDI extends DI {
  static final GetIt sl = DI.sl;

  @override
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl.registerFactory<MainDataSource>(
      () => buildDependency<MainDataSource>(
        useMock: useMock,
        mockFactoryFunc: MockMainDataSource.new,
        factoryFunc: () => RestMainDataSource(sl<IHttpClient<Dio>>().client),
      ),
    );
  }

  @override
  Future<void> initRepositories(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl.registerFactory<MainRepository>(() => MainRepositoryImpl(sl()));
  }

  @override
  Future<void> initState(FlavorStatus flavor, {bool useMock = false}) async {
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
  Future<void> init(FlavorStatus flavor, {bool useMock = false}) async {
    await super.init(flavor, useMock: useMock);

    await HomeDI().init(flavor, useMock: useMock);
  }
}
