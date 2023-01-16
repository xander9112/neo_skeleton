import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

class PinCodeHeader extends StatelessWidget {
  const PinCodeHeader({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    required this.hasError,
    required this.pinCodeLength,
    required this.pinFilledCodeLength,
    required this.isLoading,
    this.isChanging = false,
    this.error,
    super.key,
    this.avatar,
    this.name,
  });

  final int pinCodeLength;
  final int pinFilledCodeLength;

  final bool isChanging;
  final bool hasPinCode;
  final bool hasTemporaryCode;
  final bool hasError;
  final bool isLoading;
  final String? error;
  final String? avatar;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.xxl),
      child: Column(
        children: <Widget>[
          if (name != null)
            Expanded(
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.l),
                    child: Text(name!),
                  ),
                  Expanded(
                    child: PinCodeTitle(
                      hasPinCode: hasPinCode,
                      hasTemporaryCode: hasTemporaryCode,
                      isChanging: isChanging,
                    ),
                  ),
                ],
              ),
            ),
          if (name == null)
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: PinCodeTitle(
                      hasPinCode: hasPinCode,
                      hasTemporaryCode: hasTemporaryCode,
                      isChanging: isChanging,
                    ),
                  ),
                ],
              ),
            ),
          PinCodePoints(
            hasError: hasError,
            pinCodeLength: pinCodeLength,
            pinFilledCodeLength: pinFilledCodeLength,
            isLoading: isLoading,
          ),
          const SizedBox(height: Insets.xxl),
          Opacity(
            opacity: hasError ? 1 : 0,
            child: Text(
              error ?? '',
              style: TextStyle(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}
