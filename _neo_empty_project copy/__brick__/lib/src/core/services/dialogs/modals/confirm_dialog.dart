import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class UiConfirmDialog extends StatelessWidget {
  const UiConfirmDialog({
    super.key,
    this.title,
    this.body,
    this.params,
  });

  final String? title;
  final String? body;
  final dynamic params;

  static Future<T?> showCurrentDialog<T>(
    BuildContext context, {
    String? title,
    String? body,
    dynamic params,
  }) {
    const defaultCanClose = true;

    final canClose = (params is bool) ? params : defaultCanClose;

    return showDialog<T>(
      context: context,
      barrierDismissible: canClose,
      builder: (BuildContext context) {
        return UiConfirmDialog(title: title, body: body);
      },
    );
  }

  void onPressedCancel(BuildContext context) {
    Navigator.of(context).pop(false);
  }

  void onPressedOk(BuildContext context) {
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return UiCommonDialog(
      title: title,
      body: <Widget>[
        if (body != null) UiCommonDialog.description(context, body),
      ],
      button: Row(
        children: <Widget>[
          Expanded(
            child: UiButton(
              margin: EdgeInsets.zero,
              text: CoreI18n.no,
              onPressed: () => onPressedCancel(context),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: UiButton(
              margin: EdgeInsets.zero,
              text: CoreI18n.yes,
              onPressed: () => onPressedOk(context),
            ),
          ),
        ],
      ),
    );
  }
}
