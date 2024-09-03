import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.primary,
    required this.text,
  });

  final Color primary;
  final Color text;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? text,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      text: text ?? this.text,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      text: Color.lerp(text, other.text, t) ?? text,
    );
  }
}
