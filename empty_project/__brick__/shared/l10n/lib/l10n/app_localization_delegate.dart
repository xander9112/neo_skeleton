import 'package:flutter/material.dart';
import 'package:l10n/l10n/app_localizations.dart';

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();
  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales.any(
      (Locale supported) => supported.languageCode == locale.languageCode,
    );
  }

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}
