import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class UiConfirmDialog extends StatelessWidget {
  const UiConfirmDialog({
    super.key,
    this.title,
    this.body,
    this.yes,
    this.no,
  });

  final String? title;
  final String? body;

  final String? yes;
  final String? no;

  static Future<T?> showCurrentDialog<T>(
    BuildContext context, {
    String? title,
    String? body,
    bool canClose = true,
    String? yes,
    String? no,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: canClose,
      builder: (BuildContext context) {
        return UiConfirmDialog(
          title: title,
          body: body,
          no: no,
          yes: yes,
        );
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
            child: ElevatedButton(
              child: Text(no ?? 'No'),
              onPressed: () => onPressedCancel(context),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              child: Text(yes ?? 'Yes'),
              onPressed: () => onPressedOk(context),
            ),
          ),
        ],
      ),
    );
  }
}
