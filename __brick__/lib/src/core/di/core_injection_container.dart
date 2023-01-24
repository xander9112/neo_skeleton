// ignore_for_file: cascade_invocations

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';

import 'package:{{name.snakeCase()}}/src/core/features/settings/_settings.dart';

final slCore = GetIt.instance;

Future<void> init() async {
  slCore.registerLazySingleton(SecureStorageService.new);

  slCore.registerSingleton<DialogService>(DialogService());

  slCore.registerSingleton<ApiDioClient>(
    ApiDioClient(
      Uri.parse(dotenv.env['API_URL'] ?? ''),
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
