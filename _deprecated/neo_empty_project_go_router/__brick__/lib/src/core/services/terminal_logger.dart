import 'dart:async';
import 'dart:developer' as dev;

abstract class TerminalLogger {
  static void log(
    Object? message, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    dev.log(
      message?.toString() ?? '',
      time: time,
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
