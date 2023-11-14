import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    this.primary = ThemeConfig.primary,
    this.secondary = ThemeConfig.secondary,
  });

  ThemeColors.light({
    this.primary = ThemeConfig.primary,
    this.secondary = ThemeConfig.secondary,
  });

  final Color primary;
  final Color secondary;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? secondary,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
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
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
    );
  }
}
