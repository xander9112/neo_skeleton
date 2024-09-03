import 'package:flutter/material.dart';
import 'package:skeleton_ui_kit/skeleton_ui_kit.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class UiInfoNotify extends StatelessWidget {
  const UiInfoNotify({
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
        color: Colors.blue.withOpacity(0.7),
        border: Border.all(color: Colors.blue, width: 2),
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
