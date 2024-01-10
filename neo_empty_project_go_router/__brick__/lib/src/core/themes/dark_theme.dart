import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light(),
      const TextExtension(),
    ],
    brightness: Brightness.dark,
  );
}
