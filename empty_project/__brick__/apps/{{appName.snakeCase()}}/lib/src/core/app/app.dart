import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:l10n/l10n/app_localization_delegate.dart';
import 'package:l10n/l10n/app_localizations.dart';
import 'package:{{appName.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:settings/settings.dart';
import 'package:ui_kit/ui_kit.dart';

class App extends StatefulWidget {
  const App({required this.routerConfig, super.key});

  final RouterConfig<Object> routerConfig;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>.value(
      value: sl()..init(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        buildWhen: (previous, current) =>
            previous.themeMode != current.themeMode ||
            previous.locale != current.locale ||
            previous.status != current.status,
        builder: (context, state) {
          return MaterialApp.router(
            scaffoldMessengerKey: NotifyService.scaffoldMessengerKey,
            routerConfig: widget.routerConfig,
            themeMode: state.themeMode,
            theme: createLightTheme(),
            darkTheme: createDarkTheme(),
            debugShowCheckedModeBanner: false,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
            localizationsDelegates: const [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, child) {
              return FutureBuilder(
                future: AppInitializer.completer.future,
                builder: (context, snapshot) {
                  if (!state.status.isFetchingSuccess ||
                      snapshot.connectionState != ConnectionState.done) {
                    return const SplashPage();
                  }

                  if (state.requireUpdate) {
                    return const UpdatePage();
                  }

                  return child ?? const SizedBox.shrink();
                },
              );
            },
          );
        },
      ),
    );
  }
}
