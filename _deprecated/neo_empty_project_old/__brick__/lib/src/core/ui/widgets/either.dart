import 'package:flutter/material.dart';

/// Виджет реализующий выполнение определенного условия.
class UiEither extends StatelessWidget {
  const UiEither({
    required this.condition,
    required this.onTrue,
    this.onFalse = const SizedBox.shrink(),
    super.key,
  });

  final bool condition;
  final Widget onTrue;
  final Widget onFalse;

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return onTrue;
    }

    return onFalse;
  }
}
