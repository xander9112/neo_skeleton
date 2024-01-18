import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class NeoCrossAssetImage extends StatelessWidget {
  const NeoCrossAssetImage(
    this.url, {
    super.key,
    this.width,
    this.height,
    this.scale,
    this.color,
    this.fit = BoxFit.contain,
    this.package,
    this.alignment = Alignment.center,
  });

  final String url;
  final double? width;
  final double? height;
  final double? scale;
  final Color? color;
  final BoxFit fit;
  final String? package;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    if (url.contains('svg')) {
      return NeoCrossPlatformSvg.asset(
        url,
        width: width,
        height: height,
        color: color,
        fit: fit,
        package: package ?? '{{name.snakeCase()}}_ui_kit',
      );
    }

    return Image.asset(
      url,
      package: package ?? '{{name.snakeCase()}}_ui_kit',
      alignment: alignment,
      width: width,
      height: height,
      scale: scale,
      color: color,
      fit: fit,
    );
  }
}
