import 'package:flutter/material.dart';

class KeyItem extends StatelessWidget {
  const KeyItem({Key? key, this.child, this.onPressedNumber}) : super(key: key);

  final Widget? child;
  final Function()? onPressedNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 72.0,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressedNumber?.call,
          child: Center(child: child),
        ),
      ),
    );
  }
}
