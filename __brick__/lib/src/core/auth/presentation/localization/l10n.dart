import 'package:intl/intl.dart';

class AuthI18n {
  static String get signIn => Intl.message(
        'Sign In',
        desc: 'Sign In title',
        name: 'AuthI18n_signIn',
      );

  static String get login => Intl.message(
        'Login',
        desc: 'Login',
        name: 'AuthI18n_login',
      );

  static String get loginRequired => Intl.message(
        'Login required',
        desc: 'Login required',
        name: 'AuthI18n_loginRequired',
      );

  static String get password => Intl.message(
        'Password',
        desc: 'Password',
        name: 'AuthI18n_password',
      );

  static String get passwordRequired => Intl.message(
        'The password must not be empty',
        desc: 'Password validation message',
        name: 'AuthI18n_passwordRequired',
      );

  static String get userNotFound => Intl.message(
        'Incorrect username or password',
        desc: 'Incorrect username or password message',
        name: 'AuthI18n_userNotFound',
      );

  static String get minimumPassword => Intl.message(
        'Password must have at least 6 characters',
        desc: 'Password must have at least 6 characters',
        name: 'AuthI18n_minimumPassword',
      );

  static String get checkInternetConnection => Intl.message(
        'Check internet connection',
        desc: 'Check internet connection',
        name: 'AuthI18n_checkInternetConnection',
      );

  static String get enterPinCode => Intl.message(
        'Enter pin code',
        desc: 'Enter pin code',
        name: 'AuthI18n_enterPinCode',
      );

  static String get repeatPinCode => Intl.message(
        'Repeat pin code',
        desc: 'Repeat pin code',
        name: 'AuthI18n_repeatPinCode',
      );

  static String get settingPinCode => Intl.message(
        'Setting pin code',
        desc: 'Setting pin code',
        name: 'AuthI18n_settingPinCode',
      );

  static String pinCodeMustContain(int number) {
    return Intl.plural(
      number,
      one: 'Pin code must contain $number character',
      other: 'Pin code must contain $number characters',
      args: [number],
      desc: 'Pin codes must contain {number} character(s)',
      name: 'AuthI18n_pinCodeMustContain',
    );
  }

  static String get pinCodesDoNotMatch => Intl.message(
        'Pin codes do not match',
        desc: 'Pin codes do not match',
        name: 'AuthI18n_pinCodesDoNotMatch',
      );

  static String get invalidPin => Intl.message(
        'Invalid PIN',
        desc: 'Invalid PIN',
        name: 'AuthI18n_invalidPin',
      );

  static String get unknownError => Intl.message(
        'Unknown error. Please try later',
        desc: 'Unknown error. Please try later',
        name: 'AuthI18n_unknownError',
      );

  static String get signInToAccessTheApp => Intl.message(
        'Sign in to access the app',
        desc: 'Sign in to access the app',
        name: 'AuthI18n_signInToAccessTheApp',
      );

  static String get reset =>
      Intl.message('Reset', desc: 'Reset', name: 'AuthI18n_reset');

  static String get delete =>
      Intl.message('Delete', desc: 'Delete', name: 'AuthI18n_delete');

  static String get useBiometricsToLogin => Intl.message(
        'Use biometrics to login?',
        desc: 'Use biometrics to login?',
        name: 'AuthI18n_useBiometricsToLogin',
      );
}
