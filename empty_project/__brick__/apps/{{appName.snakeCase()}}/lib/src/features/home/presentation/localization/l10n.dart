import 'package:intl/intl.dart';

class HomeI18n {
  static String get title => Intl.message(
        'Home page',
        desc: 'Home title',
        name: 'HomeI18n_title',
      );
}
