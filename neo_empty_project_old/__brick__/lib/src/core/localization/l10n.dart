import 'package:intl/intl.dart';

class CoreI18n {
  static String get forbiddenError => Intl.message(
        'Forbidden',
        desc: 'Http Error forbidden',
        name: 'CoreI18n_forbiddenError',
      );
  static String get internalError => Intl.message(
        'Internal Error',
        desc: 'Server Internal Error',
        name: 'CoreI18n_internalError',
      );
  static String get serviceUnavailableError => Intl.message(
        'Service Unavaliable',
        desc: 'Service Unavaliable Error',
        name: 'CoreI18n_serviceUnavailableError',
      );
  static String get notFoundError => Intl.message(
        'Not found',
        desc: 'Not found Error',
        name: 'CoreI18n_notFoundError',
      );
  static String get unknownError => Intl.message(
        'Unknown Error',
        desc: 'Unknown Error',
        name: 'CoreI18n_unknownError',
      );
}
