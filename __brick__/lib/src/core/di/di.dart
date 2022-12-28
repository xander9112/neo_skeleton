import 'package:get_it/get_it.dart';

import '../core.dart';
import '../services/services.dart';
import '../config.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerSingleton<SecureStorageService>(SecureStorageService());
  getIt.registerSingleton<ThemeCubit>(ThemeCubit());

  getIt.registerSingleton<AuthCubit>(
    AuthCubit(secureStorageService: getIt<SecureStorageService>()),
  );

  getIt.registerSingleton<CoreCubit>(CoreCubit(
    authCubit: getIt<AuthCubit>(),
  ));

  getIt.registerSingleton<AppRouter>(AppRouter());
}
