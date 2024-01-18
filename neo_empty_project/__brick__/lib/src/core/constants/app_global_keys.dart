import 'package:flutter/material.dart';

abstract class AppGlobalKeys {
  static GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> calendarEventsNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> servicesNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> homeNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> usersNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> profileNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
}
