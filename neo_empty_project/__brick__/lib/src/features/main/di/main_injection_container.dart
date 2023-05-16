import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class MainInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
 Future<void> init({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    await super.init({{#useFlavor}}env,{{/useFlavor}} useMock: useMock);
  }

  @override
  Future<void> close() async {}
}
