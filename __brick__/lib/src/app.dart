// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/di/core_injection_container.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class App {
  static Future<void> init({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
    await _initCommon();

    await _initDependencies({{#useFlavor}}env{{/useFlavor}});

    await _initFirebase({{#useFlavor}}env{{/useFlavor}});

    _startApp({{#useFlavor}}env{{/useFlavor}});
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


  static Future<void> _initFirebase({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {}

  static Future<void> _initDependencies({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
    return configureDependencies({{#useFlavor}}env{{/useFlavor}});
  }

  static void _startApp({{#useFlavor}}EnvConfig env{{/useFlavor}}) {
    runApp({{name.pascalCase()}}App(router: slCore()));
  }
}

class {{name.pascalCase()}}App extends StatelessWidget {
  const {{name.pascalCase()}}App({required this.router, super.key});

  final AppAutoRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (context) {
        final cubit = slCore<SettingsCubit>();
        return cubit;
      },
      child: Builder(
        builder: (context) => BlocBuilder<SettingsCubit, SettingsState>(
          buildWhen: (previous, current) =>
              previous.appThemeMode != current.appThemeMode ||
              previous.locale != current.locale,
          builder: (context, state) => MaterialApp.router(
            routerDelegate: router.delegate(),
            themeMode: state.appThemeMode?.getThemeMode(),
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
            locale: state.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: (BuildContext context, Widget? child) {
              return DialogManager(child: child);
            },
          ),
        ),
      ),
    );
  }
}
