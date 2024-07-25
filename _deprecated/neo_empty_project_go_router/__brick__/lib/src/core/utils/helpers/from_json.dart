import 'package:intl/intl.dart';

DateTime? fromJsonDateTime(String? value) {
  if (value != null) {
    try {
      return DateTime.tryParse(value);
    } catch (_) {
      return DateFormat('dd.MM.yyyy').parse(value);
    }
  }

  return null;
}

DateTime fromJsonDateTimeRequired(String value) {
  return DateTime.parse(value).toLocal();
}
