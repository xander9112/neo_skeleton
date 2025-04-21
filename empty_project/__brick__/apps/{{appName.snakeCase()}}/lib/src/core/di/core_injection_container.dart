{{#authentication}}
import 'package:auth/auth.dart';
{{/authentication}}
import 'package:auto_route/auto_route.dart';
import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class CoreModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter(
        navigatorKey: DialogService.navigatorKey,
        routes: [
          ...AuthRoutes().routes,
          ...MainRoutes().routes,
          RedirectRoute(
            path: '*',
            redirectTo: '/',
          ),
        ],
      );

  @injectable
  SecureStorage get secureStorage => SecureStorage(key: Env.secureKey);

  @preResolve
  Future<SharedStorage> get sharedStorage => SharedStorage.init();

  @lazySingleton
  Talker get talker => TalkerFlutter.init(settings: TalkerSettings());

  @lazySingleton
  DialogService get dialogService => DialogService();

  @lazySingleton
  IHttpClient<Dio> get iHttpClient {
    final client = DioHttpClient(url: Uri.parse(Env.apiUrl));

    client.client.interceptors.add(
      TalkerDioLogger(
        talker: GetIt.I(),
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
        ),
      ),
    );

    return client;
  }

  @lazySingleton
  Dio get dio => GetIt.I<IHttpClient<Dio>>().client;

  @lazySingleton
  AppLogger get appLogger => AppLogger();
}