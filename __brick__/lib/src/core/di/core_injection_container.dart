import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';

abstract class ICoreInjection {
  static final GetIt sl = GetIt.instance;

  Future<void> initRouter() async {}

  Future<void> initProviders({bool useMock = false}) async {}

  Future<void> initRepositories({bool useMock = false}) async {}

  Future<void> initUseCases({bool useMock = false}) async {}

  Future<void> initState({bool useMock = false}) async {}

  @mustCallSuper
  Future<void> init({bool useMock = false}) async {
    await initRouter();
    await initProviders();
    await initRepositories();
    await initUseCases();
    await initState();
  }
}

class CoreInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders({bool useMock = false}) async {
    slCore.registerLazySingleton(SecureStorageService.new)

    slCore.registerSingleton<DialogService>(DialogService());

    slCore.registerSingleton<ApiDioClient>(
      ApiDioClient(
        Uri.parse(dotenv.env['API_URL'] ?? ''),
        storage: slCore(),
      ),
    );
  }

  @override
  Future<void> initState({bool useMock = false}) async {
    slCore.registerLazySingleton(
      () => SettingsCubit(
        subscriptAuthEventUseCase: slAuth(),
        getBiometricSupportModel: slAuth(),
        getAuthUseCase: slAuth(),
        setBiometrySettingUseCase: slAuth(),
        setNewPinCodeUseCase: slAuth(),
        getGlobalAuthSettings: slAuth(),
      ),
    ); 
  }
}
