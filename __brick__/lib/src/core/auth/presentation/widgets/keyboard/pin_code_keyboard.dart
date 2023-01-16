import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

class PinCodeKeyboard extends StatelessWidget {
  const PinCodeKeyboard({
    required this.useBiometric,
    super.key,
    this.onPressedNumber,
    this.onReset,
    this.onDelete,
    this.onBiometricPressed,
    this.icon,
    this.reset,
    this.delete,
  });

  final bool useBiometric;

  final void Function(String text)? onPressedNumber;
  final VoidCallback? onReset;
  final VoidCallback? onDelete;
  final VoidCallback? onBiometricPressed;
  final String? icon;
  final String? reset;
  final String? delete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('1'),
                child: const KeyItemNumber(text: '1'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('2'),
                child: const KeyItemNumber(text: '2'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('3'),
                child: const KeyItemNumber(text: '3'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('4'),
                child: const KeyItemNumber(text: '4'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('5'),
                child: const KeyItemNumber(text: '5'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('6'),
                child: const KeyItemNumber(text: '6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('7'),
                child: const KeyItemNumber(
                  text: '7',
                ),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('8'),
                child: const KeyItemNumber(
                  text: '8',
                ),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('9'),
                child: const KeyItemNumber(
                  text: '9',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: onReset?.call,
                child: Text(
                  reset ?? 'Reset',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('0'),
                child: const KeyItemNumber(text: '0'),
              ),
              if (!useBiometric)
                KeyItem(
                  onPressedNumber: onDelete,
                  child: Text(
                    delete ?? 'Delete',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              // if (useBiometric && icon != null)
              //   KeyItem(
              //     onPressedNumber: onBiometricPressed,
              //     child: UiIcon(icon!),
              //   ),
            ],
          ),
        ],
      ),
    );
  }
}
