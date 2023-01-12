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
}
