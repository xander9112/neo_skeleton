import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

class TextExtension extends ThemeExtension<TextExtension> {
  const TextExtension({
    this.headline1,
    this.headline2,
    this.headline3,
    this.headline4,
    this.headline5,
    this.headline6,
    this.subtitle1,
    this.subtitle2,
    this.bodyText1,
    this.bodyText2,
    this.button,
    this.caption,
    this.overline,
  });

  final TextStyle? headline1;
  final TextStyle? headline2;
  final TextStyle? headline3;
  final TextStyle? headline4;
  final TextStyle? headline5;
  final TextStyle? headline6;
  final TextStyle? subtitle1;
  final TextStyle? subtitle2;
  final TextStyle? bodyText1;
  final TextStyle? bodyText2;
  final TextStyle? button;
  final TextStyle? caption;
  final TextStyle? overline;

  TextStyle get _headline1 => headline1 ?? TextStyles.headline1;
  TextStyle get _headline2 => headline2 ?? TextStyles.headline2;
  TextStyle get _headline3 => headline3 ?? TextStyles.headline3;
  TextStyle get _headline4 => headline4 ?? TextStyles.headline4;
  TextStyle get _headline5 => headline5 ?? TextStyles.headline5;
  TextStyle get _headline6 => headline6 ?? TextStyles.headline6;
  TextStyle get _subtitle1 => subtitle1 ?? TextStyles.subtitle1;
  TextStyle get _subtitle2 => subtitle2 ?? TextStyles.subtitle2;
  TextStyle get _bodyText1 => bodyText1 ?? TextStyles.bodyText1;
  TextStyle get _bodyText2 => bodyText2 ?? TextStyles.bodyText2;
  TextStyle get _button => button ?? TextStyles.button;
  TextStyle get _caption => caption ?? TextStyles.caption;
  TextStyle get _overline => overline ?? TextStyles.overline;

  @override
  ThemeExtension<TextExtension> copyWith({
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? headline4,
    TextStyle? headline5,
    TextStyle? headline6,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? bodyText1,
    TextStyle? bodyText2,
    TextStyle? button,
    TextStyle? caption,
    TextStyle? overline,
  }) {
    return TextExtension(
      headline1: headline1 ?? _headline1,
      headline2: headline2 ?? _headline2,
      headline3: headline3 ?? _headline3,
      headline4: headline4 ?? _headline4,
      headline5: headline5 ?? _headline5,
      headline6: headline6 ?? _headline6,
      subtitle1: subtitle1 ?? _subtitle1,
      subtitle2: subtitle2 ?? _subtitle2,
      bodyText1: bodyText1 ?? _bodyText1,
      bodyText2: bodyText2 ?? _bodyText2,
      button: button ?? _button,
      caption: caption ?? _caption,
      overline: overline ?? _overline,
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
