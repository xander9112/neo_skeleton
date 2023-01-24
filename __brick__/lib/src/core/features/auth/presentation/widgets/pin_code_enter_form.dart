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
    this.isFace = true,
  });

  final String? message;

  final int pinCodeLength;

  final bool useBiometric;

  final bool isFace;

  final void Function(String)? onComplete;

  final void Function()? onBiometricPressed;

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
            style: const TextStyle(color: Colors.red),
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
          )
        ],
      );
  }

  void onPressedNumber(String text) {
    setState(() {
      code = '$code$text';
    });
    if (code.length == widget.pinCodeLength) {
      widget.onComplete?.call(code);
    }
  }

  void onPressedDelete() {
    setState(() {
      code = code.substring(0, code.length - 1);
    });
  }

  void onPressedReset() {
    setState(() {
      code = '';
    });
  }

  void onBiometricPressed() {
    widget.onBiometricPressed?.call();
  }
}
