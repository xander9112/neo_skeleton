import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class App {
  factory App() {
    _singleton ??= App._internal();

    return _singleton!;
  }

  App._internal();

  static int _milliseconds = 20;

  static App? _singleton;

  static final Completer<void> _completer = Completer<void>();

  static BehaviorSubject<int> progress = BehaviorSubject.seeded(0);

  static Future<void> init(EnvConfig env) async {
    _updateProgress(0);

    await _initCommon();

    await _updateProgress(progress.value + 20);

    await _initEnv(env);

    await _updateProgress(progress.value + 20);

    await _initDependencies(env);

    await _updateProgress(progress.value + 20);

    await _initFirebase(env);

    await _updateProgress(progress.value + 20);

    return _startApp(env);
  }

  static Future<void> _initCommon([
    List<DeviceOrientation>? orientations,
  ]) async {
    await SystemChrome.setPreferredOrientations(
      orientations ??
          <DeviceOrientation>[
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
    );
  }

  static Future<void> _initFirebase(EnvConfig env) async {}

  static Future<void> _initEnv(EnvConfig env) async {
    await dotenv.load(fileName: '.${env.name}.env');
  }

  static Future<void> _initDependencies(EnvConfig env) async {
    await configureDependencies(env);
  }

  static Future<void> _startApp(EnvConfig env) async {
    await AuthInjection.sl<AuthManager<AuthenticatedUser>>().init();

    _updateProgress(100);

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
        await Future<void>.delayed(const Duration(milliseconds: _milliseconds), () {
          progress.sink.add(progress.value + 1);
        });
      });
    }
  }
}
