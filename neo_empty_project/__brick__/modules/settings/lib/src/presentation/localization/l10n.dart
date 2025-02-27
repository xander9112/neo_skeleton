import 'package:intl/intl.dart';

class SettingsI18n {
  static String get title => Intl.message(
        'Settings page',
        desc: 'Settings page',
        name: 'SettingsI18n_title',
      );

  static String get update => Intl.message(
        'Update page',
        desc: 'Update page',
        name: 'SettingsI18n_update',
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

  static String get invalidPin => Intl.message(
        'Invalid PIN',
        desc: 'Invalid PIN',
        name: 'SettingsI18n_invalidPin',
      );

  static String pinCodeMustContain(int number) {
    return Intl.plural(
      number,
      one: 'Pin code must contain $number character',
      other: 'Pin code must contain $number characters',
      args: [number],
      desc: 'Pin codes must contain {number} character(s)',
      name: 'SettingsI18n_pinCodeMustContain',
    );
  }

  static String get pinCodesDoNotMatch => Intl.message(
        'Pin codes do not match',
        desc: 'Pin codes do not match',
        name: 'SettingsI18n_pinCodesDoNotMatch',
      );

  static String get reset => Intl.message(
        'Reset',
        desc: 'Reset',
        name: 'SettingsI18n_reset',
      );

  static String get delete => Intl.message(
        'Delete',
        desc: 'Delete',
        name: 'SettingsI18n_delete',
      );

  static String get enterPinCode => Intl.message(
        'Enter pin code',
        desc: 'Enter pin code',
        name: 'SettingsI18n_enterPinCode',
      );

  static String get repeatPinCode => Intl.message(
        'Repeat pin code',
        desc: 'Repeat pin code',
        name: 'SettingsI18n_repeatPinCode',
      );

  static String get settingPinCode => Intl.message(
        'Setting pin code',
        desc: 'Setting pin code',
        name: 'SettingsI18n_settingPinCode',
      );

  static String get signInToAccessTheApp => Intl.message(
        'Sign in to access the app',
        desc: 'Sign in to access the app',
        name: 'SettingsI18n_signInToAccessTheApp',
      );

  static String get useBiometricsToLogin => Intl.message(
        'Use biometrics to login?',
        desc: 'Use biometrics to login?',
        name: 'SettingsI18n_useBiometricsToLogin',
      );
}
