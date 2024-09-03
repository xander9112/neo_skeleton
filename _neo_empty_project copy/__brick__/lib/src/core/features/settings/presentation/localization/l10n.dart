import 'package:intl/intl.dart';

class SettingsI18n {
  static String get title => Intl.message(
        'Settings page',
        desc: 'Settings page',
        name: 'SettingsI18n_title',
      );

  static String get theme => Intl.message(
        'Theme',
        desc: 'Theme',
        name: 'SettingsI18n_theme',
      );

  static String get lightTheme => Intl.message(
        'Light',
        desc: 'Light theme',
        name: 'SettingsI18n_lightTheme',
      );

  static String get darkTheme => Intl.message(
        'Dark',
        desc: 'Dark theme',
        name: 'SettingsI18n_darkTheme',
      );

  static String get systemTheme => Intl.message(
        'System',
        desc: 'System theme',
        name: 'SettingsI18n_systemTheme',
      );

  static String get selectTheme => Intl.message(
        'Select a theme',
        desc: 'Select a theme',
        name: 'SettingsI18n_selectTheme',
      );

  static String get selectLanguage => Intl.message(
        'Select language',
        desc: 'Select language',
        name: 'SettingsI18n_selectLanguage',
      );

  static String get systemLanguage => Intl.message(
        'System language',
        desc: 'System language',
        name: 'SettingsI18n_systemLanguage',
      );

  static String get changePinCode => Intl.message(
        'Change pin code',
        desc: 'Change pin code',
        name: 'SettingsI18n_changePinCode',
      );

  static String get useBiometrics => Intl.message(
        'Use biometrics?',
        desc: 'Use biometrics?',
        name: 'SettingsI18n_useBiometrics',
      );

  static String get useLocalAuth => Intl.message(
        'Use local auth?',
        desc: 'Use local auth?',
        name: 'SettingsI18n_useLocalAuth',
      );

  static String get signOutTitle => Intl.message(
        'Are you sure you want to sign out?',
        desc: 'Are you sure you want to sign out?',
        name: 'SettingsI18n_signOutTitle',
      );
}
