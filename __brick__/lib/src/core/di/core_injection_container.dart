// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/auth/di/auth_injection_container.dart';
import 'package:{{name.snakeCase()}}/src/core/di/external_injection_container.dart';

final slCore = GetIt.instance;

Future<void> init() async {
  slCore.registerLazySingleton(SecureStorageService.new);

  slCore.registerSingleton<DialogService>(DialogService());

  //TODO: flavors
  slCore.registerSingleton<ApiDioClient>(
    ApiDioClient(
      Uri.parse('https://{{name.snakeCase()}}.com/api'),
      storage: slCore(),
    ),
  );


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
