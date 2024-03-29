import 'package:get_it/get_it.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import 'package:{{projectName.snakeCase()}}_core/{{projectName.snakeCase()}}_core.dart';
import '../_{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Injection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    if (useMock) {
      sl.registerFactory<Remote{{name.pascalCase()}}DataSource>(
        Mock{{name.pascalCase()}}DataSource.new,
      );
    } else {
      sl.registerFactory<Remote{{name.pascalCase()}}DataSource>(
        () => Rest{{name.pascalCase()}}DataSource(
          sl<ApiDioClient>().dio,
        ),
      );
    }
  }

  @override
 Future<void> initRepositories({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory<{{name.pascalCase()}}Repository>(() => {{name.pascalCase()}}RepositoryImpl(sl()));
  }

  @override
 Future<void> initState({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory(() => {{name.pascalCase()}}Cubit(repository: sl()));
  }
}
