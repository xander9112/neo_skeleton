import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

ThemeData createLightTheme() {
  return ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light(),
      const TextExtension(),
    ],
  );
}
