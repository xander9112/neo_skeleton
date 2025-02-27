import 'package:flutter/material.dart';
import 'package:settings/src/_src.dart';

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
    final style = Theme.of(context).textTheme.titleMedium;

    if (hasPinCode) {
      return Text(SettingsI18n.enterPinCode, style: style);
    }

    if (hasTemporaryCode) {
      return Text(SettingsI18n.repeatPinCode, style: style);
    }

    return Text(SettingsI18n.settingPinCode, style: style);
  }
}
