import 'package:flutter/widgets.dart';

abstract class AppLocalizations {
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en', 'US'),
    Locale('ru', 'RU')
  ];

  static const Locale fallbackLocale = Locale('en', 'US');
  static const Locale startLocale = Locale('ru', 'RU');
}
