import 'package:flutter/material.dart';

class KeyItemNumber extends StatelessWidget {
  const KeyItemNumber({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 48.0,
        height: 1,
      ),
    );
  }
}
