import 'dart:async';

import 'package:{{name.snakeCase()}}/src/core/services/dialogs/types.dart';

class DialogService {
  late void Function({
    required int dialogType,
    required Completer<dynamic> completer,
    String? title,
    String? body,
    dynamic params,
  }) _showDialogListener;

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
    required int dialogType,
    String? title,
    String? body,
    dynamic params,
  }) {
    _dialogCompleter = Completer<T?>();

    _showDialogListener(
      dialogType: dialogType,
      completer: _dialogCompleter,
      title: title,
      body: body,
      params: params,
    );

    return _dialogCompleter.future as Future<T?>;
  }

  /// Completes the _dialogCompleter to resume the Future's execution call
  void dialogComplete() {
    _dialogCompleter.complete();
  }
}
