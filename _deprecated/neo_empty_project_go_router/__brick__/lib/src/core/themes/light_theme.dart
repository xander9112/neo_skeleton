import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

ThemeData createLightTheme() {
  return ThemeData(
    useMaterial3: true,
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: Colors.black),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light(),
      const TextExtension(),
    ],
  );
}
