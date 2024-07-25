import 'package:flutter/foundation.dart';

abstract class DateHelper {
  DateHelper._();

  static DateTime now() {
    if (kDebugMode) {
      // return DateTime.now().subtract(const Duration(days: 1));
    }

    return DateTime.now();
  }

  static int getMonthSizeBetweenDates(DateTime initialDate, DateTime endDate) {
    return calculateMonthSize(endDate) - calculateMonthSize(initialDate) + 1;
  }

  static List<List<DateTime>> getMonths(
    DateTime initialDate,
    DateTime endDate,
  ) {
    final months = <List<DateTime>>[];

    final monthCount = getMonthSizeBetweenDates(initialDate, endDate);

    for (var i = 0; i < monthCount; i++) {
      if (i == monthCount - 1) {
        months.add(<DateTime>[
          DateTime(
            initialDate.year,
            initialDate.month + i,
            initialDate.day,
          ),
          DateTime(
            endDate.year,
            endDate.month + i,
            endDate.day,
          ),
        ]);
      } else if (i == 0) {
        months.add(<DateTime>[
          DateTime(
            initialDate.year,
            initialDate.month + i,
            initialDate.day,
          ),
          DateTime(
            initialDate.year,
            initialDate.month + i + 1,
            0,
          ),
        ]);
      } else if (i == monthCount - 1) {
        months.add(<DateTime>[
          DateTime(
            endDate.year,
            endDate.month,
          ),
          DateTime(
            endDate.year,
            endDate.month,
            endDate.day,
          ),
        ]);
      } else {
        months.add(<DateTime>[
          DateTime(
            initialDate.year,
            initialDate.month + i,
          ),
          DateTime(
            initialDate.year,
            initialDate.month + i + 1,
            0,
          ),
        ]);
      }
    }

    return months;
  }

  static int getDifferenceInDays(DateTime initialDate, DateTime endDate) {
    return DateTime(initialDate.year, initialDate.month, initialDate.day)
        .difference(DateTime(endDate.year, endDate.month, endDate.day))
        .inDays;
  }

  static int calculateMonthSize(DateTime dateTime) {
    return dateTime.year * 12 + dateTime.month;
  }

  static List<DateTime?> getMonthDays(List<DateTime> dateTime) {
    final firstDate = dateTime.first;
    final lastDate = dateTime.last;

    final newFirstDateTime =
        firstDate.subtract(Duration(days: firstDate.weekday - 1));

    final daysCount = getDifferenceInDays(lastDate, newFirstDateTime);

    final days = <DateTime?>[];

    for (var i = 0; i <= daysCount; i++) {
      final date = DateTime(
        newFirstDateTime.year,
        newFirstDateTime.month,
        newFirstDateTime.day + i,
      );

      if (getDifferenceInDays(date, firstDate) < 0) {
        days.add(null);
      } else {
        days.add(date);
      }
    }

    return days;
  }

  static DateTime findFirstDateOfTheWeek(DateTime dateTime) {
    return dateTime.subtract(Duration(days: dateTime.weekday - 1));
  }

  static DateTime findLastDateOfTheWeek(DateTime dateTime) {
    return dateTime
        .add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
  }

  static DateTime findLastDateOfTheMonth(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month + 1, 0);
  }

  static DateTime findFirstDateOfTheMonth(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month);
  }

  static DateTime findLastDateOfTheYear(DateTime dateTime) {
    return DateTime(dateTime.year, 12, 31);
  }

  static DateTime findFirstDateOfTheYear(DateTime dateTime) {
    return DateTime(dateTime.year);
  }

  static bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return false;
    }

    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  static bool isBirthday(DateTime? birthday, DateTime date) {
    if (birthday == null) {
      return false;
    }

    return birthday.month == date.month && birthday.day == date.day;
  }

  static bool isBetweenDays(
    DateTime current,
    DateTime dateFrom,
    DateTime dateTo, {
    bool includeCurrent = false,
  }) {
    if (includeCurrent) {
      return (isSameDay(current, dateFrom) || current.isAfter(dateFrom)) &&
          (current.isBefore(dateTo) || isSameDay(current, dateTo));
    }

    return current.isAfter(dateFrom) && current.isBefore(dateTo);
  }

  static DateTime startOfWeek(DateTime date) {
    return date.subtract(Duration(days: date.weekday - 1));
  }

  static DateTime endOfWeek(DateTime date) {
    return date.add(Duration(days: DateTime.daysPerWeek - date.weekday));
  }

  static DateTime startOfMonth(DateTime date) {
    return DateTime(date.year, date.month);
  }

  static DateTime endOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  static bool isSameMonth(DateTime? dateA, DateTime? dateB) {
    return dateA?.year == dateB?.year && dateA?.month == dateB?.month;
  }
}
