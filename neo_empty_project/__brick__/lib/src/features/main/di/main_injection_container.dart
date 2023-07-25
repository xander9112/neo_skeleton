import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
{{#useFlavor}}import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';{{/useFlavor}}
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

class MainInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
 Future<void> init({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    await super.init({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
  }

  @override
  Future<void> initState({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerFactory<MainCubit>(
      () => buildDependency<MainCubit>(
        useMock: useMock,
        factoryFunc: () => MainCubit(false),
        mockFactoryFunc: () => MainCubit(true),
      ),
    );
  }  
}
