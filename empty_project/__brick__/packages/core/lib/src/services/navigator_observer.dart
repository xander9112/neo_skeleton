// ignore_for_file: strict_raw_type

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class AppRouteObserver extends NavigatorObserver {
  AppRouteObserver(this.logger);

  final AppLogger logger;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    if (route.settings.name == null) {
      return;
    }
    logger.logTyped(_AppRouteLog(route: route));
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    if (route.settings.name == null) {
      return;
    }
    logger.logTyped(_AppRouteLog(route: route, isPush: false));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);

    if (newRoute == null) {
      return;
    }

    logger.logTyped(_AppRouteLog(route: newRoute, isPush: false));
  }
}

class _AppRouteLog extends TalkerLog {
  _AppRouteLog({
    required Route route,
    bool isPush = true,
  }) : super(_createMessage(route, isPush));

  @override
  AnsiPen get pen => AnsiPen()..xterm(135);

  @override
  String get key => TalkerLogType.route.key;

  static String _createMessage(
    Route<dynamic> route,
    bool isPush,
  ) {
    final buffer = StringBuffer()
      ..write(isPush ? 'Open' : 'Close')
      ..write(' route named ')
      ..write(route.settings.name ?? 'null');

    final args = route.settings.arguments;
    if (args != null) {
      buffer.write('\nArguments: $args');
    }
    return buffer.toString();
  }
}
