// ignore_for_file: cascade_invocations

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

final slAuth = GetIt.instance;

Future<void> init() async {
  slAuth.registerLazySingleton<AuthManager<AuthenticatedUser>>(
    () => AuthManagerImpl(
      authRepository: slAuth(),
      biometricRepository: slAuth(),
      settings: AuthManagerSettings(useBiometric: !kIsWeb, useLocalAuth: true),
    ),
  );

  slAuth.registerFactory<AuthRepository<AuthModel, AuthenticatedUser>>(
    () => AuthRepositoryImpl(slAuth(), slAuth()),
  );

  slAuth.registerFactory<BiometricRepository>(BiometricRepositoryImpl.new);

  slAuth.registerFactory(() => RestAuthDatasource(slAuth<ApiDioClient>().dio));

  slAuth.registerFactory(() => LoginUseCase(slAuth()));

  slAuth.registerFactory(() => CheckAuthUseCase(slAuth()));

  slAuth.registerFactory(
    () => LoginCubit(loginUseCase: slAuth(), checkAuthUseCase: slAuth()),
  );
}
