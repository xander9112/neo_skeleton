import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

abstract class ICoreInjection {
  static final GetIt sl = GetIt.instance;

  Future<void> initRouter() async {}

  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initUseCases(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initState(EnvConfig env, {bool useMock = false}) async {}

  @mustCallSuper
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    await initRouter();
    await initProviders(env, useMock: useMock);
    await initRepositories(env, useMock: useMock);
    await initUseCases(env, useMock: useMock);
    await initState(env, useMock: useMock);
  }

  Future<void> close();
}

class CoreInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerLazySingleton<AppAutoRouter>(
      () => AppAutoRouter(
        localAuthGuard: LocalAuthGuard(sl()),
        authGuard: AuthGuard(sl()),
        updateGuard: UpdateGuard(sl()),
      ),
    );
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerLazySingleton(SecureStorageService.new)
      ..registerSingleton<DialogService>(DialogService())
      ..registerSingleton<ApiDioClient>(
        ApiDioClient(
          Uri.parse(dotenv.env['API_URL'] ?? ''),
          storage: sl(),
        ),
      );
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl.registerLazySingleton(
      () => SettingsCubit(
        subscriptAuthEventUseCase: sl(),
        getBiometricSupportModel: sl(),
        getAuthUseCase: sl(),
        setBiometrySettingUseCase: sl(),
        setNewPinCodeUseCase: sl(),
        getGlobalAuthSettings: sl(),
        setLocalAuthUseCase: sl(),
      ),
    );
  }

  @override
  Future<void> close() async {
    sl
      ..unregister<AppAutoRouter>()
      ..unregister<SecureStorageService>()
      ..unregister<DialogService>()
      ..unregister<ApiDioClient>()
      ..unregister<SettingsCubit>();
  }
}
