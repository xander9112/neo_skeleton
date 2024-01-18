import 'package:intl/intl.dart';

class MainI18n {
  static String get calendarEventBottomMenuItem => Intl.message(
        'Календарь',
        desc: 'Calendar events bottom menu item',
        name: 'MainI18n_calendarEventBottomMenuItem',
      );

  static String get homeBottomMenuItem => Intl.message(
        'Home',
        desc: 'Home bottom menu item',
        name: 'MainI18n_homeBottomMenuItem',
      );

  static String get usersBottomMenuItem => Intl.message(
        'Users',
        desc: 'Users bottom menu item',
        name: 'MainI18n_usersBottomMenuItem',
      );

  static String get settingsBottomMenuItem => Intl.message(
        'Settings',
        desc: 'Settings bottom menu item',
        name: 'MainI18n_settingsBottomMenuItem',
      );
}
