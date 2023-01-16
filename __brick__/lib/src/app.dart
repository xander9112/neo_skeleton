import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/di/core_injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class App {
  static Future<void> init(EnvConfig env) async {
    await _initCommon();

    await _initDependencies(env);

    await _initFirebase(env);

    _startApp(env);
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

  static Future<void> _initDependencies(EnvConfig env) async {
    return configureDependencies(env);
  }

  static void _startApp(EnvConfig env) {
    runApp(JnpAdmin(router: slCore()));
  }
}

class {{name.pacalCase()}}Admin extends StatelessWidget {
  const {{name.pacalCase()}}Admin({required this.router, super.key});

  final AppAutoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: router.delegate(),
      themeMode: ThemeMode.light,
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      routeInformationParser:
          router.defaultRouteParser(includePrefixMatches: true),
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (BuildContext context, Widget? child) {
        return DialogManager(child: child);
      },
    );
  }
}
