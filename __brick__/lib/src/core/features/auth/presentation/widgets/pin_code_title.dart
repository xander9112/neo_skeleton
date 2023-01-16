import 'package:{{name.snakeCase()}}/src/core/features/auth/_auth.dart';
import 'package:flutter/material.dart';

class PinCodeTitle extends StatelessWidget {
  const PinCodeTitle({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    this.isChanging = false,
    super.key,
  });

  final bool hasPinCode;
  final bool hasTemporaryCode;
  final bool isChanging;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.subtitle1;

    if (hasPinCode) {
      return Text(AuthI18n.enterPinCode, style: style);
    }

    if (hasTemporaryCode) {
      return Text(AuthI18n.repeatPinCode, style: style);
    }

    return Text(AuthI18n.settingPinCode, style: style);
  }
}