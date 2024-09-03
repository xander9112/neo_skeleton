import 'package:app_runner/app_runner.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

void main() async {
  configureUrlStrategyApp();

  final ZoneConfiguration zoneConfiguration = ZoneConfiguration(
    onZoneError: (Object error, StackTrace stackTrace) {
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);

      TerminalLogger.log(
        error.runtimeType.toString(),
        name: 'onZoneError',
        stackTrace: stackTrace,
        error: error,
      );
    },
  );

  appRunner(
    RunnerConfiguration.guarded(
      widgetConfig: widgetConfiguration,
      zoneConfig: zoneConfiguration,
    ),
  );
}
