import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class AuthInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerFactory<AuthRouter>(AuthRouter.new);
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerLazySingleton<AuthManager<AuthenticatedUser>>(
        () => AuthManagerImpl(
          authRepository: sl(),
          biometricRepository: sl(),
          settings: AuthManagerSettings(
            useBiometric: !kIsWeb,
            useLocalAuth: true,
          ),
          demoUserRepository: DemoUserRepositoryImpl(),
        ),
      )
      ..registerFactory<RestAuthDataSource>(
        () => buildDependency<RestAuthDataSource>(
          useMock: useMock,
          factoryFunc: () => RestAuthDataSource(sl()),
          mockFactoryFunc: MockAuthDataSource.new,
        ),
      );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<AuthRepository<AuthModel, AuthenticatedUser>>(
        () => AuthRepositoryImpl(sl(), sl()),
      )
      ..registerFactory<BiometricRepository>(
        () => BiometricRepositoryImpl(sl()),
      );
  }

  @override
  Future<void> initUseCases(EnvConfig env, {bool useMock = false}) async {
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
      ..registerFactory(() => GetAuthUseCase(sl()))
      ..registerFactory(() => CheckPinCodeFromDialogUseCase(sl()))
      ..registerFactory(() => CheckBlockUseCase(sl()))
      ..registerFactory(() => UnBlockUseCase(sl()))
      ..registerFactory(() => SetLocalAuthUseCase(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory(
        () => LoginCubit(
          loginUseCase: sl(),
          checkAuthUseCase: sl(),
          checkBlockUseCase: sl(),
          unBlockUseCase: sl(),
        ),
      )
      ..registerFactory(
        () => LocalAuthCubit(
          manager: sl(),
          checkLocalAuthUseCase: sl(),
          setPinCodeUseCase: sl(),
          checkPinCodeUseCase: sl(),
          setBiometryUseCase: sl(),
          checkBiometryUseCase: sl(),
          getBiometricSupportModel: sl(),
          dialogService: sl(),
        ),
      )
      ..registerFactory(() => ChangePinCodeCubit(sl(), sl()));
  }
}
