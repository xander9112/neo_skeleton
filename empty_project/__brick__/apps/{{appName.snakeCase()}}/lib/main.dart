import 'dart:async';

import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

FutureOr<void> main() async {
  configureUrlStrategyApp();

  await runZonedGuarded(() async {
    AppInitializer.initDependencies = () async {
      try {
        await configureDependencies(Flavor.status);
      } catch (error, stacktrace) {
        if (kDebugMode) {
          print('Error: $error, $stacktrace');
        }
      }
    };

    await AppInitializer(status: Flavor.status).init(() {
       final AppRouter _router = sl<AppRouter>();

      return StreamBuilder<Key>(
        stream: AppInitializer.key.stream,
        builder: (context, snapshot) {
          return App(
            key: snapshot.data,
            routerConfig: _router.config(
              reevaluateListenable: sl<AuthManager<UserEntity>>(),
              includePrefixMatches: true,
              navigatorObservers: () => [
                AppRouteObserver(sl<AppLogger>()),
              ],
              deepLinkBuilder: (PlatformDeepLink deepLink) async {
                if (_router.redirectUrl != null) {
                  final _url = _router.redirectUrl;

                  _router.redirectUrl = null;

                  return DeepLink.path(_url!);
                }

                if (deepLink.path == '/') {
                  return DeepLink.path(_router.initialRoute);
                }

                return deepLink;
              },
            ),
          );
        },
      );
    });
  }, (error, stackTrace) {
    TerminalLogger.log(
      error.toString(),
      name: 'onFlutterError',
      stackTrace: stackTrace,
      error: error,
    );
  });
}
