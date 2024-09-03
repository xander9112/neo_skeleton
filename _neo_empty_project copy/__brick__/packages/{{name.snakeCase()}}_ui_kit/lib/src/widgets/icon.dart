import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class NeoIcon extends StatelessWidget {
  const NeoIcon(
    this.icon, {
    super.key,
    this.size = 24.0,
    this.color,
    this.onPressed,
    this.margin,
  });

  final String icon;
  final double size;
  final Color? color;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: margin,
      child: Align(
        child: GestureDetector(
          onTap: onPressed,
          child: NeoCrossAssetImage(
            icon,
            width: size,
            height: size,
            color: color,
          ),
        ),
      ),
    );
  }
}
