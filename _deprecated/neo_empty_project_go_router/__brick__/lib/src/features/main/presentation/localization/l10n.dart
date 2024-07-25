import 'package:intl/intl.dart';

class MainI18n {
  static String get homeBottomMenuItem => Intl.message(
        'Home',
        desc: 'Home bottom menu item',
        name: 'MainI18n_homeBottomMenuItem',
      );
  static String get settingsBottomMenuItem => Intl.message(
        'Settings',
        desc: 'Settings bottom menu item',
        name: 'MainI18n_settingsBottomMenuItem',
      );
}
