// ignore_for_file: cascade_invocations

import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:get_it/get_it.dart';

final slCore = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(SecureStorageService.new);

  getIt.registerSingleton<DialogService>(DialogService());

  //TODO: flavors
  getIt.registerSingleton<ApiDioClient>(
    ApiDioClient(
      Uri.parse('https://mobile-neoportal.neoflex.ru/api'),
      storage: slCore(),
    ),
  );
}
