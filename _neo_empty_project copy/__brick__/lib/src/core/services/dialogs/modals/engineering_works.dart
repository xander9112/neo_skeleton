import 'dart:io';

import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class UiEngineeringWorksDialog extends StatelessWidget {
  const UiEngineeringWorksDialog({super.key, this.canClose = true});

  final bool canClose;

  static Future<T?> showCurrentDialog<T>(BuildContext context, dynamic params) {
    const defaultCanClose = true;

    final canClose = (params is bool) ? params : defaultCanClose;

    return showDialog<T>(
      context: context,
      barrierDismissible: canClose,
      useSafeArea: false,
      builder: (BuildContext context) {
        return UiEngineeringWorksDialog(canClose: canClose);
      },
    );
  }

  void onPressedClose() {
    exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black.withOpacity(0.5),
      child: UiCommonDialog(
        title: 'Ведутся работы',
        body: <Widget>[
          UiCommonDialog.description(
            context,
            'Очень важные работы',
          ),
        ],
        button: Row(
          children: <Widget>[
            Expanded(
              child: UiButton(
                text: 'Закрыть',
                onPressed: onPressedClose,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
