import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:skeleton_core/skeleton_core.dart';
import 'package:talker_flutter/talker_flutter.dart';

class AppInitializer {
  factory AppInitializer() {
    _singleton ??= AppInitializer._internal();

    return _singleton!;
  }

  AppInitializer._internal();

  static StreamController<Key> key = StreamController.broadcast();

  static const int _milliseconds = 1;

  static const int _methodsCount = 7;

  static AppInitializer? _singleton;

  static final Completer<void> _completer = Completer<void>();

  static BehaviorSubject<int> progress = BehaviorSubject.seeded(0);

  static void updateKey() {
    key.sink.add(UniqueKey());
  }

  static Future<void> init(EnvConfig env) async {
    const increment = 100 ~/ _methodsCount;

    await _updateProgress(0);

    try {
      await _initCommon();

      await _updateProgress(progress.value + increment);

      await _initStorage(env);

      await _updateProgress(progress.value + increment);

      await _initFirebase(env);

      await _updateProgress(progress.value + increment);

      await _initDependencies(env);

      await _updateProgress(progress.value + increment);

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

  static Future<void> startMainCheck() async {
    await AuthInjection.sl<AuthManager<UserEntity>>().init();
    await SettingsInjection.sl<SettingsCubit>().getSettings();

    await _updateProgress(100);
  }

  static void onFinishSplash() {
    if (!_completer.isCompleted) {
      _completer.complete();
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

  static Future<void> _initFirebase(EnvConfig env) async {}

  static Future<void> _initMetrics(EnvConfig env) async {}

  static Future<void> _initDependencies(EnvConfig env) async {
    return configureDependencies(env);
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
    final router = CoreInjection.sl<AppRouter>();
    final manager = CoreInjection.sl<AuthManager<UserEntity>>();

    runApp(
      App(
        routerConfig: router.config(
          reevaluateListenable: manager,
          includePrefixMatches: true,
          navigatorObservers: () => [
            TalkerRouteObserver(
              CoreInjection.sl<AppLogger>().talkerLogger,
            ),
          ],
          deepLinkBuilder: (PlatformDeepLink deepLink) async {
            if (deepLink.path == '/') {
              return DeepLink.path(router.initialRoute);
            }

            return deepLink;
          },
        ),
      ),
    );

    return _completer.future;
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
