import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class ExternalInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl.registerLazySingleton(FlutterSecureStorage.new);
  }

  @override
  Future<void> close() async {
    sl.unregister<FlutterSecureStorage>();
  }
}
