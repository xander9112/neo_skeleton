import 'package:flutter/material.dart';

class KeyItemNumber extends StatelessWidget {
  const KeyItemNumber({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 48,
        height: 1,
      ),
    );
  }
}
