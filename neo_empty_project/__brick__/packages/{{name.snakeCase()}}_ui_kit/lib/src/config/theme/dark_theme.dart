import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

ThemeData createDarkTheme() {
  final themeColors = ThemeColors.dark();

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark(),
      TextExtension(
        displayLarge:
            TextStyles.displayLarge.copyWith(color: themeColors.light_1),
        displayMedium:
            TextStyles.displayMedium.copyWith(color: themeColors.light_1),
        displaySmall:
            TextStyles.displaySmall.copyWith(color: themeColors.light_1),
        headlineMedium:
            TextStyles.headlineMedium.copyWith(color: themeColors.light_1),
        headlineSmall:
            TextStyles.headlineSmall.copyWith(color: themeColors.light_1),
        titleLarge: TextStyles.titleLarge.copyWith(color: themeColors.light_1),
        titleMedium:
            TextStyles.titleMedium.copyWith(color: themeColors.light_1),
        titleSmall: TextStyles.titleSmall.copyWith(color: themeColors.light_1),
        bodyLarge: TextStyles.bodyLarge.copyWith(color: themeColors.light_1),
        bodyMedium: TextStyles.bodyMedium.copyWith(color: themeColors.light_1),
        labelLarge: TextStyles.labelLarge.copyWith(color: themeColors.light_1),
        bodySmall: TextStyles.bodySmall.copyWith(color: themeColors.light_1),
        labelSmall: TextStyles.labelSmall.copyWith(color: themeColors.light_1),
      ),
    ],
  );
}
