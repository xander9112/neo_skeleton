import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:skeleton_ui_kit/skeleton_ui_kit.dart';

class App extends StatelessWidget {
  const App({required this.routerConfig, super.key});

  final RouterConfig<Object> routerConfig;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>.value(
          value: SettingsInjection.sl<SettingsCubit>(),
        ),
      ],
      child: StreamBuilder<Key>(
        stream: AppInitializer.key.stream,
        builder: (context, snapshot) {
          return BlocBuilder<SettingsCubit, SettingsState>(
            buildWhen: (previous, current) =>
                previous.themeMode != current.themeMode ||
                previous.locale != current.locale,
            builder: (context, state) {
              return MaterialApp.router(
                key: snapshot.data,
                scaffoldMessengerKey: AppGlobalKeys.scaffoldMessengerKey,
                routerConfig: routerConfig,
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
                  return UiEither(
                    condition: state.isLoaded,
                    onFalse: const SplashPage(),
                    onTrue: child ?? const SizedBox.shrink(),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
