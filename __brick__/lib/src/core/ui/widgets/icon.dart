import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UiIcon extends StatelessWidget {
  const UiIcon(this.icon, {super.key, this.color});

  final String icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      color: color,
    );
  }
}
