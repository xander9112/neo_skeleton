import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}_core/jnp_core.dart';

class MainInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory(
      MainCubit.new,
    );
  }
}
