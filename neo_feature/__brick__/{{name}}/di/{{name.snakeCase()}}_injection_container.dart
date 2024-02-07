import 'package:get_it/get_it.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import 'package:{{projectName.snakeCase()}}_core/{{projectName.snakeCase()}}_core.dart';
import '../_{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Injection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory<{{name.pascalCase()}}DataSource>(
      () => buildDependency<{{name.pascalCase()}}DataSource>(
        useMock: useMock,
        mockFactoryFunc: Mock{{name.pascalCase()}}DataSource.new,
        factoryFunc: () => Rest{{name.pascalCase()}}DataSource(sl<ApiDioClient>().dio),
      ),
    );
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
