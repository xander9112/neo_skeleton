import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class UiWarningNotify extends StatelessWidget {
  const UiWarningNotify({
    super.key,
    this.title,
    this.description,
    this.onPressed,
  });

  final Widget? title;
  final Widget? description;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Insets.l),
      decoration: BoxDecoration(
        color: Colors.orange.withOpacity(0.7),
        border: Border.all(color: Colors.orange, width: 2),
        borderRadius: BorderRadius.circular(Insets.l),
      ),
      child: UiCommonNotify(
        title: title,
        description: description,
        onPressed: onPressed,
      ),
    );
  }
}
