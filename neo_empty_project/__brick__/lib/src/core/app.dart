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

  static App? _singleton;

  static final Completer<void> _completer = Completer<void>();

  static BehaviorSubject<int> progress = BehaviorSubject.seeded(0);

  static Future<void> init(EnvConfig env) async {
    _updateProgress(0);

    await _initCommon();

    await _initEnv(env);

    await _initDependencies(env);

    await _initFirebase(env);

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

    _updateProgress(progress.value + 20);
  }

  static Future<void> _initFirebase(EnvConfig env) async {
    _updateProgress(progress.value + 20);
  }

  static Future<void> _initEnv(EnvConfig env) async {
    await dotenv.load(fileName: '.${env.name}.env');

    _updateProgress(progress.value + 20);
  }

  static Future<void> _initDependencies(EnvConfig env) async {
    await configureDependencies(env);

    _updateProgress(progress.value + 20);
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

  static void _updateProgress(int value) {
    progress.sink.add(value);
  }
}
