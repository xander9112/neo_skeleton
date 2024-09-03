import 'package:flutter/material.dart';

class UiCommonNotify extends StatelessWidget {
  const UiCommonNotify({
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null) title ?? const SizedBox.shrink(),
              if (description != null) description ?? const SizedBox.shrink(),
            ],
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: const Icon(Icons.close),
        ),
      ],
    );
  }
}
