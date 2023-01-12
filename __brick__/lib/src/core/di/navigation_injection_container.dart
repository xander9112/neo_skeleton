import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

final slNavigation = GetIt.instance;

Future<void> init() async {
  slNavigation.registerLazySingleton<AppRouter>(
    () => AppRouter(
      localAuthGuard: LocalAuthGuard(slNavigation()),
      authGuard: AuthGuard(slNavigation()),
      updateGuard: UpdateGuard(slNavigation()),
    ),
  );
}
