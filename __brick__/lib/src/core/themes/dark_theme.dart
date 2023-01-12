import 'package:flutter/material.dart';

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
