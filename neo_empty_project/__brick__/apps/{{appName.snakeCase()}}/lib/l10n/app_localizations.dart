import 'package:{{appName.snakeCase()}}/l10n/generated/messages_all.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  static const Iterable<Locale> supportedLocales = [
    Locale('en', 'EN'),
    Locale('ru', 'RU'),
  ];

  static Future<AppLocalizations> load(Locale locale) async {
    final localName = locale.countryCode == null || locale.countryCode!.isEmpty
        ? locale.languageCode
        : locale.toString();

    final canonicalLocaleName = Intl.canonicalizedLocale(localName);

    Intl.defaultLocale = canonicalLocaleName;

    await initializeMessages(canonicalLocaleName);

    return AppLocalizations();
  }
}
