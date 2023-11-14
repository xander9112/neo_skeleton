import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class PinCodeEnterForm extends StatefulWidget {
  const PinCodeEnterForm({
    super.key,
    this.message,
    this.pinCodeLength = 4,
    this.useBiometric = false,
    this.onComplete,
    this.onBiometricPressed,
    this.onPressedReset,
    this.isFace = true,
  });

  final String? message;

  final int pinCodeLength;

  final bool useBiometric;

  final bool isFace;

  final Future<void> Function(String)? onComplete;

  final VoidCallback? onBiometricPressed;

  final VoidCallback? onPressedReset;

  @override
  State<PinCodeEnterForm> createState() => _PinCodeEnterFormState();
}

class _PinCodeEnterFormState extends State<PinCodeEnterForm> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PinCodeHeader(
            hasPinCode: true,
            hasTemporaryCode: false,
            hasError: false,
            pinCodeLength: widget.pinCodeLength,
            pinFilledCodeLength: code.length,
            isLoading: false,
          ),
        ),
        Text(
          widget.message ?? '',
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
        Expanded(
          flex: 2,
          child: PinCodeKeyboard(
            useBiometric: widget.useBiometric,
            onPressedNumber: onPressedNumber,
            onReset: onPressedReset,
            onDelete: onPressedDelete,
            onBiometricPressed: onBiometricPressed,
            reset: AuthI18n.reset,
            delete: AuthI18n.delete,
            icon: widget.isFace ? Assets.icons.face : Assets.icons.fingerprint,
          ),
        ),
      ],
    );
  }

  Future<void> onPressedNumber(String text) async {
    setState(() {
      code = '$code$text';
    });

    if (code.length == widget.pinCodeLength) {
      await widget.onComplete?.call(code);

      onPressedReset();
    }
  }

  void onPressedDelete() {
    if (code.isEmpty) {
      return;
    }

    setState(() {
      code = code.substring(0, code.length - 1);
    });
  }

  void onPressedReset() {
    if (code.isEmpty) {
      widget.onPressedReset?.call();

      return;
    }

    setState(() {
      code = '';
    });
  }

  void onBiometricPressed() {
    widget.onBiometricPressed?.call();
  }
}
