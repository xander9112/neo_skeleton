import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
{{#useFlavor}}import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';{{/useFlavor}}

class AuthInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerFactory(() => AuthRouter(sl()));
  }

  @override
  Future<void> initProviders({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl
      ..registerLazySingleton<AuthManager<AuthenticatedUser>>(
        () => AuthManagerImpl(
          authRepository: sl(),
          biometricRepository: sl(),
          settings: AuthManagerSettings(
            useBiometric: !kIsWeb,
            useLocalAuth: {{#useLocalAuth}}true{{/useLocalAuth}}{{^useLocalAuth}}false{{/useLocalAuth}},
          ),
          demoUserRepository: DemoUserRepositoryImpl(),
        ),
      )
      ..registerFactory<RestAuthDataSource>(MockAuthDataSource.new);
  }

  @override
 Future<void> initRepositories({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl
      ..registerFactory<AuthRepository<AuthModel, AuthenticatedUser>>(
        () => AuthRepositoryImpl(sl(), sl()),
      )
      ..registerFactory<BiometricRepository>(
        () => BiometricRepositoryImpl(sl()),
      );
  }

  @override
 Future<void> initUseCases({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl
      ..registerFactory(() => LoginUseCase(sl(), sl()))
      ..registerFactory(() => CheckLocalAuthUseCase(sl()))
      ..registerFactory(() => CheckAuthUseCase(sl(), sl()))
      ..registerFactory(() => SetPinCodeUseCase(sl()))
      ..registerFactory(() => CheckPinCodeUseCase(sl()))
      ..registerFactory(() => CheckBiometryUseCase(sl(), sl()))
      ..registerFactory(() => GetBiometricSupportModel(sl()))
      ..registerFactory(() => SetBiometryUseCase(sl(), sl()))
      ..registerFactory(() => GetGlobalAuthSettingsUseCase(sl()))
      ..registerFactory(() => SubscribeAuthEventUseCase(sl()))
      ..registerFactory(() => SetBiometrySettingUseCase(sl()))
      ..registerFactory(() => SetNewPinCodeUseCase(sl(), sl()))
      ..registerFactory(() => GetAuthUseCase(sl()))
      ..registerFactory(() => CheckPinCodeFromDialogUseCase(sl()))
      ..registerFactory(() => SetLocalAuthUseCase(sl()))
      ..registerFactory(() => NavigateToMainUseCase(sl()));
  }

  @override
 Future<void> initState({{#useFlavor}}EnvConfig env,{{/useFlavor}} {bool useMock = false}) async {
    sl
      ..registerFactory(
        () => LoginCubit(loginUseCase: sl(), checkAuthUseCase: sl()),
      )
      ..registerFactory(
        () => LocalAuthCubit(
          checkLocalAuthUseCase: sl(),
          setPinCodeUseCase: sl(),
          checkPinCodeUseCase: sl(),
          setBiometryUseCase: sl(),
          checkBiometryUseCase: sl(),
          getBiometricSupportModel: sl(),
          navigateToMainUseCase: sl(),
        ),
      )
      ..registerFactory(() => CheckPinCodeDialogCubit(sl()));
  }
}
