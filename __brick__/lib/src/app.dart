import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localization_delegate.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class {{name.pascalCase()}}App extends StatelessWidget {
  const {{name.pascalCase()}}App({super.key, required this.router});

  final AppRouter router;

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
    );
  }
}
