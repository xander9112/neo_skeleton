import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:dependencies/dependencies.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

class CoreDI extends DI {
  static final GetIt sl = DI.sl;

  @override
  Future<void> initRouter() async {
    final _authRoutes = AuthRoutes();
    final _mainRoutes = MainRoutes();

    sl.registerLazySingleton<AppRouter>(
      () => AppRouter(
        navigatorKey: DialogService.navigatorKey,
        routes: [
          ..._authRoutes.routes,
          ..._mainRoutes.routes,
          RedirectRoute(
            path: '*',
            redirectTo: '/',
          ),
        ],
      ),
    );
  }

  @override
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    await SharedStorage.init();

    sl
      ..registerFactory(() => SecureStorage(key: Env.secureKey))
      ..registerFactory(SharedStorage.new)
      ..registerLazySingleton(
        () => TalkerFlutter.init(settings: TalkerSettings()),
      )
      ..registerSingleton<DialogService>(DialogService())
      ..registerSingleton<IHttpClient<Dio>>(
        DioHttpClient(url: Uri.parse(Env.apiUrl)),
      );

    sl<IHttpClient<Dio>>().client.interceptors.add(
          TalkerDioLogger(
            talker: sl(),
            settings: const TalkerDioLoggerSettings(
              printRequestHeaders: true,
              printResponseHeaders: true,
            ),
          ),
        );
  }

  @override
  Future<void> init(FlavorStatus flavor, {bool useMock = false}) async {
    sl.registerSingleton(AppLogger());

    await super.init(flavor, useMock: useMock);
  }
}
