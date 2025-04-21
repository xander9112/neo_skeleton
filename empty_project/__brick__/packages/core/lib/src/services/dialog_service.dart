import 'dart:async';

import 'package:flutter/material.dart' as material;

class DialogService {
  factory DialogService() {
    _singleton ??= DialogService._internal();

    return _singleton!;
  }

  DialogService._internal();

  static DialogService? _singleton;

  static material.GlobalKey<material.NavigatorState> navigatorKey =
      material.GlobalKey<material.NavigatorState>();

  static Future<T?> showDialog<T>({
    required material.Widget child,
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    material.RouteSettings? routeSettings,
  }) {
    return material.showDialog<T>(
      context: navigatorKey.currentContext!,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      builder: (context) => child,
    );
  }

  static Future<T?> showModalBottomSheet<T>({
    required material.Widget child,
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    material.RouteSettings? routeSettings,
  }) {
    return material.showModalBottomSheet<T>(
      context: navigatorKey.currentContext!,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      builder: (context) => child,
    );
  }
}
