import 'package:flutter/material.dart';

class Insets {
  static const double bottomNavBar = 78.0;

  static const double zero = 0.0;
  static const double xxs = 2.0;
  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 12.0;
  static const double l = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  static const double xxxl = 64.0;
}

class InsetsExtension extends ThemeExtension<InsetsExtension> {
  InsetsExtension({
    this.xxs = Insets.xxs,
    this.xs = Insets.xs,
    this.s = Insets.s,
    this.m = Insets.m,
    this.l = Insets.l,
    this.xl = Insets.xl,
    this.xxl = Insets.xxl,
    this.xxxl = Insets.xxxl,
  });

  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;
  final double xxxl;

  @override
  ThemeExtension<InsetsExtension> copyWith({
    double? xxs,
    double? xs,
    double? s,
    double? m,
    double? l,
    double? xl,
    double? xxl,
    double? xxxl,
  }) {
    return InsetsExtension(
      xxs: xxs ?? this.xxs,
      xs: xs ?? this.xs,
      s: s ?? this.s,
      m: m ?? this.m,
      l: l ?? this.l,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
      xxxl: xxxl ?? this.xxxl,
    );
  }

  @override
  ThemeExtension<InsetsExtension> lerp(
      ThemeExtension<InsetsExtension>? other, double t) {
    if (other is! InsetsExtension) {
      return this;
    }

    return InsetsExtension(
      xxs: xxs,
      xs: xs,
      s: s,
      m: m,
      l: l,
      xl: xl,
      xxl: xxl,
      xxxl: xxxl,
    );
  }
}

class BorderRadiusInsets {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 32.0;

  static const double xxs = 2.0;
  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 12.0;
  static const double l = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
  static const double xxxl = 64.0;
}
