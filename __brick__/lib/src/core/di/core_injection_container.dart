// ignore_for_file: cascade_invocations

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

final slCore = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton<CancelToken>(CancelToken.new);

  getIt.registerLazySingleton(SecureStorageService.new);

  //TODO: flavors
  getIt.registerSingleton<ApiDioClient>(
    ApiDioClient(
      Uri.parse('https://dev-mobile-neoportal.do.neoflex.ru/api'),
      storage: slCore(),
    ),
  );
}
