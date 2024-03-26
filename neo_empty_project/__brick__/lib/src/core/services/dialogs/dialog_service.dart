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
  }) {
    return material.showDialog<T>(
      context: navigatorKey.currentContext!,
      builder: (context) => child,
    );
  }

  // Добавьте другие методы для показа различных видов диалогов, например, showAlertDialog, showBottomSheet, и т.д.
}
