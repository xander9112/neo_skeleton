import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class {{name.pascalCase()}}App extends StatelessWidget {
  const {{name.pascalCase()}}App({
    this.routerConfig,
    this.builder,
    this.child,
    super.key,
  });

  final RouterConfig<Object>? routerConfig;

  final TransitionBuilder? builder;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DevicePreferencesBloc>(
      create: (_) => DevicePreferencesBloc(
        repository: DevicePreferencesRepositoryImlp(
          dataSource: SharedDevicePreferencesDataSource(),
        ),
      )..add(const DevicePreferencesEvent.started()),
      child: BlocBuilder<DevicePreferencesBloc, DevicePreferencesState>(
        buildWhen: (previous, current) =>
            previous.themeMode != current.themeMode ||
            previous.locale != current.locale,
        builder: (context, state) {
          if (!state.isLoaded) {
            return const SizedBox.shrink();
          }

          if (routerConfig == null) {
            return MaterialApp(
              title: 'JNP',
              key: ValueKey(state.locale?.languageCode),
              themeMode: state.themeMode,
              theme: createLightTheme(),
              darkTheme: createDarkTheme(),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: state.locale,
              supportedLocales: AppLocalizations.supportedLocales,
              builder: builder,
              initialRoute: Uri.base.path,
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  settings: settings,
                  builder: (context) => child ?? const SizedBox.shrink(),
                );
              },
            );
          }

          return MaterialApp.router(
            title: 'JNP',
            routerConfig: routerConfig,
            themeMode: state.themeMode,
            theme: createLightTheme(),
            darkTheme: createDarkTheme(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: state.locale,
            scaffoldMessengerKey: AppGlobalKeys.scaffoldMessengerKey,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: builder,
          );
        },
      ),
    );
  }
}
