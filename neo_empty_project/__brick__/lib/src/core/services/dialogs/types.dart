import 'dart:async';

typedef DialogListener = Future<dynamic> Function({
  required Widget child,
  required Completer<dynamic> completer,
  bool barrierDismissible,
  bool useSafeArea,
  bool useRootNavigator,
  RouteSettings? routeSettings,
});
