// ignore_for_file: cascade_invocations

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/di/core_injection_container.dart';

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

  slAuth.registerFactory<BiometricRepository>(
    () => BiometricRepositoryImpl(slAuth()),
  );

  slAuth.registerFactory<AuthDataSource>(MockAuthDataSource.new);

  slAuth.registerFactory(() => LoginUseCase(slAuth()));

  slAuth.registerFactory(() => CheckLocalAuthUseCase(slAuth()));

  slAuth.registerFactory(() => CheckAuthUseCase(slAuth()));

  slAuth.registerFactory(() => SetPinCodeUseCase(slAuth()));

  slAuth.registerFactory(() => CheckPinCodeUseCase(slAuth()));

  slAuth.registerFactory(() => CheckBiometryUseCase(slAuth()));

  slAuth.registerFactory(() => GetBiometricSupportModel(slAuth()));

  slAuth.registerFactory(() => SetBiometryUseCase(slAuth(), slCore()));

  slAuth.registerFactory(NavigateToMainUseCase.new);

  slAuth.registerFactory(
    () => LoginCubit(loginUseCase: slAuth(), checkAuthUseCase: slAuth()),
  );

  slAuth.registerFactory(
    () => LocalAuthCubit(
      checkLocalAuthUseCase: slAuth(),
      setPinCodeUseCase: slAuth(),
      checkPinCodeUseCase: slAuth(),
      setBiometryUseCase: slAuth(),
      checkBiometryUseCase: slAuth(),
      getBiometricSupportModel: slAuth(),
      navigateToMainUseCase: slAuth(),
    ),
  );
}
