import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      TextExtension.light,
    ],
    brightness: Brightness.dark,
  );
}
