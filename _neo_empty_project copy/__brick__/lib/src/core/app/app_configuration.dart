import 'package:app_runner/app_runner.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
{{#useFlavor}}import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';{{/useFlavor}}

final WidgetConfiguration widgetConfiguration = WidgetConfiguration(
  child: AppBuilder<void>(
    preInitialize: (WidgetsBinding binding) async {
      return App.init({{#useFlavor}}await Env.getCurrentEnv(){{/useFlavor}});
    },
    builder: (context, snapshot, child) {
      late final Widget _child;

      switch (snapshot.connectionState) {
        case ConnectionState.none:
        case ConnectionState.active:
        case ConnectionState.waiting:
          _child = {{name.pascalCase()}}App(
            builder: (context, child) => SplashPage(
              onFinishSplash: App.onFinishSplash,
              progress: App.progress,
              showAnimation: false,
            ),
          );

        case ConnectionState.done:
          final RootStackRouter router = CoreInjection.sl<RootStackRouter>();
          final AuthManager<AuthenticatedUser> manager =
              CoreInjection.sl<AuthManager<AuthenticatedUser>>();

          _child = {{name.pascalCase()}}App(
            routerConfig: router.config(
              reevaluateListenable: manager,
              includePrefixMatches: true,
              navigatorObservers: () =>
                  [TalkerRouteObserver(CoreInjection.sl())],
              deepLinkBuilder: (PlatformDeepLink _) async {
                return _;
              },
            ),
            builder: (BuildContext context, Widget? child) {
              return SizedBox(child: child);
            },
          );
      }

      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: _child,
      );
    },
  ),
  onFlutterError: (FlutterErrorDetails errorDetails) {
    if (kDebugMode) {
      TerminalLogger.log(
        errorDetails.toStringShort(),
        name: 'onFlutterError',
        stackTrace: errorDetails.stack,
        error: errorDetails.exception,
      );
    } else {
      // FirebaseCrashlytics.instance
      //     .recordError(errorDetails.exception, errorDetails.stack);
    }
  },
);
