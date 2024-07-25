import 'package:app_runner/app_runner.dart';
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
        late final Widget _child;

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            _child = const {{name.pascalCase()}}App(
              child: GetDevicePreferences(child: SplashPage()),
            );

          case ConnectionState.done:
            final AppRouter router = CoreInjection.sl<AppRouter>();

            _child = {{name.pascalCase()}}App(
              routerConfig: router.config,
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
          child: _child,
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
