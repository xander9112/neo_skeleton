import 'package:intl/intl.dart';

class SplashI18n {
  static String get title => Intl.message(
        'Splash title',
        desc: 'Splash title',
        name: 'SplashI18n_title',
      );
}
