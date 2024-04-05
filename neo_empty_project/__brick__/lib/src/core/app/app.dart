import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class App {
  factory App() {
    _singleton ??= App._internal();

    return _singleton!;
  }

  App._internal();

  static const int _milliseconds = 1;

  static const int _methodsCount = 8;

  static App? _singleton;

  static final Completer<void> _completer = Completer<void>();

  static BehaviorSubject<int> progress = BehaviorSubject.seeded(0);

  static Future<void> init(EnvConfig env) async {
    const increment = 100 ~/ _methodsCount;

    await _updateProgress(0);

    try {
      await _initCommon();

      await _initEnv(env);

      await _updateProgress(progress.value + increment);

      await _initStorage(env);

      await _updateProgress(progress.value + increment);

      await _initFirebase(env);

      await _updateProgress(progress.value + increment);

      await _initDependencies(env);

      await _updateProgress(progress.value + increment);

      await _initSettings(env);

      await _updateProgress(progress.value + increment);

      await _initMetrics(env);

      await _updateProgress(progress.value + increment);

      await _initSubscription();

      await _updateProgress(progress.value + increment);

      await _startApp(env);
    } catch (errorDetails, stackTrace) {
      TerminalLogger.log(
        errorDetails.toString(),
        name: 'App.init',
        stackTrace: stackTrace,
        error: errorDetails,
      );
    }
  }

  static Future<void> _initCommon([
    List<DeviceOrientation>? orientations,
  ]) async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations(
      orientations ??
          <DeviceOrientation>[
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
    );
  }

  static Future<void> _initEnv(EnvConfig env) async {
    try {
      await dotenv.load(fileName: '.${env.name}.env');
    } catch (_) {
      debugPrint(_.toString());
    }
  }

  static Future<void> _initFirebase(EnvConfig env) async {}

  static Future<void> _initSettings(EnvConfig env) async {
    // await AppSettingsInjection.sl<AppSettingsCubit>().init();
  }

  static Future<void> _initMetrics(EnvConfig env) async {
    // await CoreSL.sl<AppMetrics>().init(env);
  }

  static Future<void> _initDependencies(EnvConfig env) async {
    return configureDependencies({{#useFlavor}}env{{/useFlavor}});
  }

  static Future<void> _initStorage(EnvConfig env) async {
    Hive.init(
      (kIsWeb
              ? HydratedStorage.webStorageDirectory
              : await getApplicationDocumentsDirectory())
          .path,
    );

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
    );
  }

  static Future<void> _initSubscription() async {}

  static Future<void> _startApp(EnvConfig env) async {
    // await AppSettingsInjection.sl<AppSettingsCubit>().check();

    // await AuthInjection.sl<AuthCubit>().init();

    await _updateProgress(100);

    return _completer.future;
  }

  static void onFinishSplash() {
    if (!_completer.isCompleted) {
      _completer.complete();
    }
  }

  static Future<void> _updateProgress(int value) async {
    if (value == 0) {
      progress.sink.add(value);
    } else {
      final list = List.generate(value - progress.value, (index) => index);

      await Future.forEach(list, (_) async {
        await Future<void>.delayed(const Duration(milliseconds: _milliseconds),
            () {
          progress.sink.add(progress.value + 1);
        });
      });
    }
  }
}
