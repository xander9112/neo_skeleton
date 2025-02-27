import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class UiSelectDialogParams {
  UiSelectDialogParams({
    this.noButtonText,
    this.yesButtonText,
  });

  final String? noButtonText;
  final String? yesButtonText;
}

class UiSelectDialog extends StatelessWidget {
  const UiSelectDialog({
    super.key,
    this.title,
    this.body,
    this.params,
  });

  final String? title;
  final String? body;
  final UiSelectDialogParams? params;

  static Future<bool?> showCurrentDialog(
    BuildContext context, {
    String? title,
    String? body,
    dynamic params,
  }) {
    return showDialog<bool?>(
      context: context,
      builder: (BuildContext context) {
        return UiSelectDialog(
          title: title,
          body: body,
          params: params as UiSelectDialogParams?,
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
          if (params?.noButtonText != null)
            Expanded(
              child: ElevatedButton(
                child: Text(params?.noButtonText ?? 'Нет'),
                onPressed: () => onPressedCancel(context),
              ),
            ),
          if (params?.noButtonText != null) const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              child: Text(params?.yesButtonText ?? 'Да'),
              onPressed: () => onPressedOk(context),
            ),
          ),
        ],
      ),
    );
  }
}
