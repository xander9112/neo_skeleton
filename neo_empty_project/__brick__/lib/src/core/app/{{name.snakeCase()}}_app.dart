import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class {{name.pascalCase()}}App extends StatelessWidget {
  const {{name.pascalCase()}}App({
    required this.builder,
    super.key,
    this.routerConfig,
    this.child,
  });

  final RouterConfig<Object>? routerConfig;

  final TransitionBuilder builder;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DevicePreferencesBloc>(
          create: (_) => DevicePreferencesBloc(
            repository: DevicePreferencesRepositoryImlp(
              dataSource: SharedDevicePreferencesDataSource(),
            ),
          )..add(const DevicePreferencesEvent.started()),
        ),
        // BlocProvider<AppSettingsCubit>(
        //   create: (context) => CoreSL.sl(),
        // ),
      ],
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
              key: UniqueKey(),
              themeMode: ThemeMode.light,
              theme: createLightTheme(),
              darkTheme: createDarkTheme(),
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.locale,
              initialRoute: Uri.base.path,
              navigatorKey: DialogService.navigatorKey,
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  settings: settings,
                  builder: (context) => builder(context, null),
                );
              },
            );
          }

          return MaterialApp.router(
            key: ValueKey(state.locale?.languageCode),
            routerConfig: routerConfig,
            themeMode: ThemeMode.light,
            theme: createLightTheme(),
            darkTheme: createDarkTheme(),
            localizationsDelegates: const [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
            builder: builder,
          );
        },
      ),
    );
  }
}

class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // _logger.d('New route pushed: ${route.settings.name}');

    if (kDebugMode) {
      // print('New route pushed: ${route.settings.name}');
    }
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (kDebugMode) {
      // print('Tab route visited: ${route.name}');
    }
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    if (kDebugMode) {
      // print('Tab route re-visited: ${route.name}');
    }
  }
}
