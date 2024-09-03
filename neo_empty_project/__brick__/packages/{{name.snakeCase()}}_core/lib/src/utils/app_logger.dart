import 'package:talker_flutter/talker_flutter.dart';

class AppLogger {
  AppLogger({Talker? logger}) : _logger = logger ?? TalkerFlutter.init();

  final Talker _logger;

  Talker get talkerLogger => _logger;

  void error(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _logger.error(msg, exception, stackTrace);
  }

  void debug(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _logger.debug(msg, exception, stackTrace);
  }

  void info(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _logger.info(msg, exception, stackTrace);
  }

  void verbose(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _logger.verbose(msg, exception, stackTrace);
  }

  void warning(
    dynamic msg, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _logger.warning(msg, exception, stackTrace);
  }
}
