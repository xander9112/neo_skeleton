import 'dart:async';

import 'package:{{name.snakeCase()}}/src/core/services/dialogs/types.dart';

class DialogService {
  late DialogListener _showDialogListener;

  late Completer<dynamic> _dialogCompleter;

  // ignore: use_setters_to_change_properties
  void registerDialogListener(
    DialogListener showDialogListener,
  ) {
    _showDialogListener = showDialogListener;
  }

  /// Calls the dialog listener and
  /// returns a Future that will wait for dialogComplete.
  Future<T?> showDialog<T>({
    required Widget child,
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) {
    _dialogCompleter = Completer<T?>();

    _showDialogListener(
      completer: _dialogCompleter,
      child: child,
      barrierDismissible: barrierDismissible,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      useSafeArea: useSafeArea,
    );

    return _dialogCompleter.future as Future<T?>;
  }

  /// Completes the _dialogCompleter to resume the Future's execution call
  void dialogComplete() {
    _dialogCompleter.complete();
  }
}
