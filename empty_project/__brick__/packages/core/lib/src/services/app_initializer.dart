import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';

typedef AppCallback = Widget Function();

class AppInitializer {
  factory AppInitializer({FlavorStatus? status}) {
    _singleton ??= AppInitializer._internal(status ?? FlavorStatus.production);

    return _singleton!;
  }

  AppInitializer._internal(this.status);

  static AppInitializer? _singleton;

  final FlavorStatus status;

  static StreamController<Key> key = StreamController.broadcast();

  static const int _milliseconds = 1;

  static const int _methodsCount = 6;

  static bool _authIsFinish = {{^authentication}};

  static bool _splashIsFinish = false;

  static final Completer<void> completer = Completer<void>();

  static BehaviorSubject<int> progress = BehaviorSubject.seeded(0);

  static void updateKey() {
    DI.sl<AppRouter>().redirectUrl =
        AutoRouter.of(DialogService.navigatorKey.currentContext!).currentPath;

    key.sink.add(UniqueKey());
  }

  Future<void> init(AppCallback callback, {bool useAuth = {{authentication}}}) async {
    const increment = 100 ~/ _methodsCount;

    if (useAuth) {
      _authIsFinish = false;
    }

    await _updateProgress(0);

    try {
      await _initCommon();

      await _updateProgress(progress.value + increment, '_initCommon');

      await initStorage();

      await _updateProgress(progress.value + increment, 'initStorage');

      await initFirebase();

      await _updateProgress(progress.value + increment, 'initFirebase');

      await initDependencies();

      await _updateProgress(progress.value + increment, 'initDependencies');

      await initMetrics();

      await _updateProgress(progress.value + increment, 'initMetrics');

      await beforeStartApp();

      await _startApp(callback);
    } catch (errorDetails) {
      // TerminalLogger.log(
      //   errorDetails.toString(),
      //   name: 'App.init',
      //   stackTrace: stackTrace,
      //   error: errorDetails,
      // );
    }
  }

  static Future<void> Function() initFirebase = Future.value;

  static Future<void> Function() initMetrics = Future.value;

  static Future<void> Function() initDependencies = Future.value;

  static Future<void> Function() initStorage = () async {
    Hive.init(
      (kIsWeb ? Directory('') : await getApplicationDocumentsDirectory()).path,
    );
  };

  static Future<void> _startApp(AppCallback callback) async {
    await _updateProgress(100, '_startApp');

    runApp(callback());

    return completer.future;
  }

  static Future<void> Function() beforeStartApp = () async {};

  static void onFinishAuth() {
    _authIsFinish = true;

    onFinish();
  }

  static void onFinishSplash() {
    _splashIsFinish = true;

    onFinish();
  }

  static void onFinish() {
    if (!completer.isCompleted && _authIsFinish && _splashIsFinish) {
      completer.complete();
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

  static Future<void> _updateProgress(int value, [String? methodName]) async {
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

    if (kDebugMode) {
      print(
        'Progress: ${progress.value}${methodName != null ? ' - $methodName' : ''}',
      );
    }
  }
}
