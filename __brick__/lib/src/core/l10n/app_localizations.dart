import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './generated/messages_all_locales.dart';

class AppLocalizations {
  static const Iterable<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  static Future<AppLocalizations> load(Locale locale) async {
    final String localeName =
        locale.countryCode == null || locale.countryCode!.isNotEmpty
            ? locale.languageCode
            : locale.toString();

    final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    Intl.defaultLocale = canonicalLocaleName;

    await initializeMessages(canonicalLocaleName);

    return AppLocalizations();
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales.any(
        (Locale supported) => supported.languageCode == locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
