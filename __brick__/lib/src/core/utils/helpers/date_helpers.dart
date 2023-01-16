bool isBirthday(DateTime? birthday, DateTime date) {
  if (birthday == null) {
    return false;
  }

  return birthday.month == date.month && birthday.day == date.day;
}

int getMonthSizeBetweenDates(DateTime initialDate, DateTime endDate) {
  return calculateMonthSize(endDate) - calculateMonthSize(initialDate);
}

int calculateMonthSize(DateTime dateTime) {
  return dateTime.year * 12 + dateTime.month;
}

bool isAnniversary(
  DateTime? workInCompany,
  DateTime date,
  int years, {
  bool onlyYear = false,
}) {
  if (workInCompany == null) {
    return false;
  }

  if (onlyYear) {
    return getMonthSizeBetweenDates(workInCompany, date) == years * 12;
  }

  return workInCompany.month == date.month &&
      workInCompany.day == date.day &&
      getMonthSizeBetweenDates(workInCompany, date) == years * 12;
}

class DateDifference {
  DateDifference({this.years = 0, this.months = 0, this.days = 0});

  int years;
  int months;
  int days;

  @override
  String toString() {
    return '{ years: $years, months: $months, days: $days }';
  }
}

DateDifference getTheDateDifference(DateTime date) {
  final now = DateTime.now();

  var years = now.year - date.year;
  var months = now.month - date.month;
  var days = now.day - date.day;

  if (months < 0 || (months == 0 && days < 0)) {
    years--;
    months += days < 0 ? 11 : 12;
  }

  if (days < 0) {
    final monthAgo = DateTime(now.year, now.month - 1, date.day);
    days = now.difference(monthAgo).inDays + 1;
  }

  return DateDifference(years: years, months: months, days: days);
}

bool isWeekend(DateTime date) {
  return date.weekday == 6 || date.weekday == 7;
}

DateTime getFirstDateForLogTime() {
  final now = DateTime.now();

  var firstDate = DateTime(now.year, now.month);

  if (now.day < 4) {
    firstDate = DateTime(now.year, now.month - 1);
  }

  // if (now.difference(firstDate).inDays < 7) {
  //   firstDate = firstDate
  //       .subtract(Duration(days: 20 - now.difference(firstDate).inDays));
  // }

  return firstDate;
}

DateTime getLastDateForLogTime() {
  final now = DateTime.now();

  var lastDate = DateTime(now.year, now.month + 1, 0);

  if (lastDate.difference(now).inDays < 7) {
    lastDate = DateTime(now.year, now.month, now.day + 7);
  }

  return lastDate;
}

bool isSameDay(DateTime a, DateTime b) {
  return (a.year == b.year) && (a.month == b.month) && (a.day == b.day);
}
/*
extension DateTimeExtension on DateTime {
  String timeAgo({bool numericDates = false}) {
    final DateTime date2 = DateHelper.now();
    final Duration difference = date2.difference(this);

    if ((difference.inDays / 7).floor() > 1) {
      return DateFormat('dd-MM-yyyy HH:mm').format(this);
    } else if ((difference.inDays / 7).floor() == 1) {
      return numericDates ? tr('timeAgo.1 week ago') : tr('timeAgo.Last week');
    } else if (difference.inDays >= 2) {
      return plural('timeAgo.days ago', difference.inDays);
    } else if (difference.inDays >= 1) {
      return numericDates
          ? plural('timeAgo.days ago', 1)
          : tr('timeAgo.Yesterday');
    } else if (difference.inHours >= 2) {
      return plural('timeAgo.hours ago', difference.inHours);
    } else if (difference.inHours >= 1) {
      return numericDates
          ? plural('timeAgo.hours ago', 1)
          : tr('timeAgo.An hour ago');
    } else if (difference.inMinutes >= 2) {
      return plural('timeAgo.minutes ago', difference.inMinutes);
    } else if (difference.inMinutes >= 1) {
      return numericDates
          ? plural('timeAgo.minutes ago', 1)
          : tr('timeAgo.A minute ago');
    } else if (difference.inSeconds >= 3) {
      // return '${difference.inSeconds} seconds ago';
      return tr('timeAgo.seconds ago');
    } else {
      return tr('timeAgo.Just now');
    }
  }
}*/
