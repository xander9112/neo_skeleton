import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:dependencies/dependencies.dart';

class HomeDI extends DI {
  static final GetIt sl = DI.sl;

  @override
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl.registerFactory<HomeDataSource>(
      () => buildDependency<HomeDataSource>(
        useMock: useMock,
        mockFactoryFunc: MockHomeDataSource.new,
        factoryFunc: () => RestHomeDataSource(sl<IHttpClient<Dio>>().client),
      ),
    );
  }

  @override
  Future<void> initRepositories(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl.registerFactory<HomeRepository>(() => HomeRepositoryImpl(sl()));
  }

  @override
  Future<void> initState(FlavorStatus flavor, {bool useMock = false}) async {
    sl.registerFactory(() => HomeCubit(repository: sl()));
  }
}
