import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class TextExtension extends ThemeExtension<TextExtension> {
  const TextExtension({
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.labelLarge,
    this.bodySmall,
    this.labelSmall,
  });

  final TextStyle? displayLarge;
  final TextStyle? displayMedium;
  final TextStyle? displaySmall;
  final TextStyle? headlineMedium;
  final TextStyle? headlineSmall;
  final TextStyle? titleLarge;
  final TextStyle? titleMedium;
  final TextStyle? titleSmall;
  final TextStyle? bodyLarge;
  final TextStyle? bodyMedium;
  final TextStyle? labelLarge;
  final TextStyle? bodySmall;
  final TextStyle? labelSmall;

  TextStyle get _displayLarge => displayLarge ?? TextStyles.displayLarge;
  TextStyle get _displayMedium => displayMedium ?? TextStyles.displayMedium;
  TextStyle get _displaySmall => displaySmall ?? TextStyles.displaySmall;
  TextStyle get _headlineMedium => headlineMedium ?? TextStyles.headlineMedium;
  TextStyle get _headlineSmall => headlineSmall ?? TextStyles.headlineSmall;
  TextStyle get _titleLarge => titleLarge ?? TextStyles.titleLarge;
  TextStyle get _titleMedium => titleMedium ?? TextStyles.titleMedium;
  TextStyle get _titleSmall => titleSmall ?? TextStyles.titleSmall;
  TextStyle get _bodyLarge => bodyLarge ?? TextStyles.bodyLarge;
  TextStyle get _bodyMedium => bodyMedium ?? TextStyles.bodyMedium;
  TextStyle get _labelLarge => labelLarge ?? TextStyles.labelLarge;
  TextStyle get _bodySmall => bodySmall ?? TextStyles.bodySmall;
  TextStyle get _labelSmall => labelSmall ?? TextStyles.labelSmall;

  @override
  ThemeExtension<TextExtension> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? labelLarge,
    TextStyle? bodySmall,
    TextStyle? labelSmall,
  }) {
    return TextExtension(
      displayLarge: displayLarge ?? _displayLarge,
      displayMedium: displayMedium ?? _displayMedium,
      displaySmall: displaySmall ?? _displaySmall,
      headlineMedium: headlineMedium ?? _headlineMedium,
      headlineSmall: headlineSmall ?? _headlineSmall,
      titleLarge: titleLarge ?? _titleLarge,
      titleMedium: titleMedium ?? _titleMedium,
      titleSmall: titleSmall ?? _titleSmall,
      bodyLarge: bodyLarge ?? _bodyLarge,
      bodyMedium: bodyMedium ?? _bodyMedium,
      labelLarge: labelLarge ?? _labelLarge,
      bodySmall: bodySmall ?? _bodySmall,
      labelSmall: labelSmall ?? _labelSmall,
    );
  }

  @override
  ThemeExtension<TextExtension> lerp(
    ThemeExtension<TextExtension>? other,
    double t,
  ) {
    if (other is! TextExtension) {
      return this;
    }
    return const TextExtension();
  }

  // static TextExtension get light => TextExtension(
  //       mainText: TextStyles.mainText.copyWith(
  //         color: ThemeConfig.smallTextColor,
  //       ),
  //     );
}
