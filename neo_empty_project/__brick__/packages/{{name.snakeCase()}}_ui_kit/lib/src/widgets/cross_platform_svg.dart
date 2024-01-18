import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NeoCrossPlatformSvg {
  static Widget asset(
    String assetPath, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
    Alignment alignment = Alignment.center,
    String? semanticsLabel,
    String? package,
  }) {
    return SvgPicture.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      alignment: alignment,
      package: package ?? '{{name.snakeCase()}}_ui_kit',
      placeholderBuilder: (_) => const CircularProgressIndicator.adaptive(),
    );
  }
}
