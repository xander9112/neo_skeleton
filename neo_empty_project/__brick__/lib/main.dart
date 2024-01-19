import 'package:app_runner/app_runner.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/app.dart';
import 'package:{{name.snakeCase()}}/src/core/{{name.snakeCase()}}_app.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class CustomWidgetsFlutterBinding extends WidgetsFlutterBinding {}

void main() async {
  configureUrlStrategyApp();

  final WidgetConfiguration widgetConfiguration = WidgetConfiguration(
    child: AppBuilder<void>(
      preInitialize: (WidgetsBinding binding) async {
        return App.init(await Env.getCurrentEnv());
      },
      builder: (
        BuildContext context,
        AsyncSnapshot<void> snapshot,
        Widget? child,
      ) {
        late final Widget child;

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            child = {{name.pascalCase()}}App(
              child: GetDevicePreferences(
                child: SplashPage(
                  onFinishSplash: App.onFinishSplash,
                  progress: App.progress,
                  showAnimation: false,
                ),
              ),
            );

          case ConnectionState.done:
            final AppRouter router = CoreInjection.sl<AppRouter>();
            final AuthManager<AuthenticatedUser> manager =
                CoreInjection.sl<AuthManager<AuthenticatedUser>>();

            child = {{name.pascalCase()}}App(
              routerConfig: router.config(
                reevaluateListenable: manager,
                includePrefixMatches: true,
                navigatorObservers: () {
                  return [MyObserver()];
                },
                deepLinkBuilder: (PlatformDeepLink link) async {
                  if (link.uri.path != '/') {
                    return link;
                  }

                  final path = Uri.base.path;

                  return DeepLink.path(path);
                },
              ),
              builder: (BuildContext context, Widget? child) {
                return BlocProvider<SettingsCubit>(
                  create: (context) => CoreInjection.sl(),
                  child: DialogManager(router: router, child: child),
                );
              },
            );
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 150),
          child: child,
        );
      },
    ),
    onFlutterError: (FlutterErrorDetails errorDetails) {
      TerminalLogger.log(
        errorDetails.toStringShort(),
        name: 'onFlutterError',
        stackTrace: errorDetails.stack,
        error: errorDetails.exception,
      );
    },
    initializeBinding: CustomWidgetsFlutterBinding.new,
  );

  final ZoneConfiguration zoneConfiguration = ZoneConfiguration(
    onZoneError: (Object error, StackTrace stackTrace) {
      TerminalLogger.log(
        error.runtimeType.toString(),
        name: 'onZoneError',
        stackTrace: stackTrace,
        error: error,
      );
    },
  );

  appRunner(
    kIsWeb
        ? RunnerConfiguration(
            widgetConfig: widgetConfiguration,
            onPlatformError: (Object exception, StackTrace stackTrace) {
              TerminalLogger.log(
                exception.runtimeType.toString(),
                name: 'onPlatformError',
                stackTrace: stackTrace,
                error: exception,
              );

              return false;
            },
          )
        : RunnerConfiguration.guarded(
            widgetConfig: widgetConfiguration,
            zoneConfig: zoneConfiguration,
          ),
  );
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) {
      print('New route pushed: ${route.settings.name}');
    }
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (kDebugMode) {
      print('Tab route visited: ${route.name}');
    }
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    if (kDebugMode) {
      print('Tab route re-visited: ${route.name}');
    }
  }
}
