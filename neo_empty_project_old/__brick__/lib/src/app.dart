import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
{{#useFlavor}}import 'package:flutter_dotenv/flutter_dotenv.dart';{{/useFlavor}}
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
{{#useFlavor}}import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';{{/useFlavor}}

class App {
  static Future<void> init({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
    await _initCommon();

    await _initEnv({{#useFlavor}}env{{/useFlavor}});

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

  static Future<void> _initEnv({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
    {{#useFlavor}}await dotenv.load(fileName: '.${env.name}.env');{{/useFlavor}}
  }

  static Future<void> _initDependencies({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
    return configureDependencies({{#useFlavor}}env{{/useFlavor}});
  }

  static void _startApp({{#useFlavor}}EnvConfig env{{/useFlavor}}) {
    runApp({{name.pascalCase()}}App(router: CoreInjection.sl()));
  }
}

class {{name.pascalCase()}}App extends StatelessWidget {
  const {{name.pascalCase()}}App({required this.router, super.key});

  final AppAutoRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (context) {
        return CoreInjection.sl<SettingsCubit>();
      },
      child: Builder(
        builder: (context) {
          return BlocBuilder<SettingsCubit, SettingsState>(
            buildWhen: (previous, current) =>
                previous.appThemeMode != current.appThemeMode ||
                previous.locale != current.locale,
            builder: (context, state) => MaterialApp.router(
              routerConfig: router.config(
                reevaluateListenable:
                    CoreInjection.sl<AuthManager<AuthenticatedUser>>(),
              ),
              key: ValueKey(state.locale?.languageCode),
              themeMode: state.appThemeMode?.getThemeMode(),
              theme: createLightTheme(),
              darkTheme: createDarkTheme(),
              debugShowCheckedModeBanner: false,
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
          );
        },
      ),
    );
  }
}
