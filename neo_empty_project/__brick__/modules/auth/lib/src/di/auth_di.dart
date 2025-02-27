import 'package:auth/src/_src.dart';
import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

class AuthDI extends DI {
  static final GetIt sl = DI.sl;

  @override
  Future<void> initRouter() async {
    sl.registerFactory(() => AuthRouterHelper(router: sl()));
  }

  @override
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl
      ..registerFactory<RestAuthDataSource>(() {
        if (useMock) {
          return MockAuthDataSource();
        }

        return RestAuthDataSource(sl<IHttpClient<Dio>>().client);
      })
      ..registerFactory<AuthStorage>(() => AuthStorage(storage: sl()));
  }

  @override
  Future<void> initRepositories(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl
      ..registerFactory<AuthRepository<AuthModel, UserEntity>>(
        () => AuthRepositoryImpl(
          restAuthDataSource: sl(),
          storage: sl(),
          userSecurityStorage: sl(),
        ),
      )
      ..registerLazySingleton<AuthManager<UserEntity>>(
        () => AuthManagerImpl(
          authRepository: sl(),
          demoUserRepository: DemoUserRepositoryImpl(),
          securityStorage: sl(),
        ),
      );
  }

  @override
  Future<void> initUseCases(FlavorStatus flavor, {bool useMock = false}) async {
    sl
      ..registerFactory(() => LoginUseCase(sl()))
      ..registerFactory(() => CheckLocalAuthUseCase(sl()))
      ..registerFactory(() => CheckPinCodeUseCase(sl()))
      ..registerFactory(() => SubscribeAuthEventUseCase(sl()))
      ..registerFactory(() => GetAuthUseCase(sl()))
      ..registerFactory(() => CheckBlockUseCase(sl()))
      ..registerFactory(() => UnBlockUseCase(sl()));
  }

  @override
  Future<void> initState(FlavorStatus flavor, {bool useMock = false}) async {
    sl
      ..registerFactory(
        () => LoginCubit(
          loginUseCase: sl(),
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
        ),
      );
  }
}
