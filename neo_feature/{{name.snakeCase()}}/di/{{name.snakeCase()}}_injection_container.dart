import 'package:get_it/get_it.dart';
import '../_profile.dart';

class {{name.pascalCase()}}Injection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerFactory(() => {{name.pascalCase()}}Router(sl()));
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    if (useMock) {
      sl.registerFactory<{{name.pascalCase()}}DataSource>(
        Mock{{name.pascalCase()}}DataSource.new,
      );
    } else {
      sl.registerFactory<{{name.pascalCase()}}DataSource>(
        () => Rest{{name.pascalCase()}}DataSource(
          sl<ApiDioClient>().dio,
        ),
      );
    }
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<I{{name.pascalCase()}}Repository>(() => {{name.pascalCase()}}Repository(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory(() => {{name.pascalCase()}}Cubit(repository: sl()));
  }
}
