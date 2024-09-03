import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

ThemeData createLightTheme() {
  final themeColors = ThemeColors.light();

  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: LightThemeColors.light_1,
    colorScheme: ColorScheme.light(
      primary: themeColors.primary,
      secondary: themeColors.violetAccent2,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: Colors.black),
    ),
    extensions: <ThemeExtension<dynamic>>[
      themeColors,
      TextExtension(
        displayLarge:
            TextStyles.displayLarge.copyWith(color: themeColors.black_1),
        displayMedium:
            TextStyles.displayMedium.copyWith(color: themeColors.black_1),
        displaySmall:
            TextStyles.displaySmall.copyWith(color: themeColors.black_1),
        headlineMedium:
            TextStyles.headlineMedium.copyWith(color: themeColors.black_1),
        headlineSmall:
            TextStyles.headlineSmall.copyWith(color: themeColors.black_1),
        titleLarge: TextStyles.titleLarge.copyWith(color: themeColors.black_1),
        titleMedium:
            TextStyles.titleMedium.copyWith(color: themeColors.black_1),
        titleSmall: TextStyles.titleSmall.copyWith(color: themeColors.black_1),
        bodyLarge: TextStyles.bodyLarge.copyWith(color: themeColors.black_1),
        bodyMedium: TextStyles.bodyMedium.copyWith(color: themeColors.black_1),
        labelLarge: TextStyles.labelLarge.copyWith(color: themeColors.black_1),
        bodySmall: TextStyles.bodySmall.copyWith(color: themeColors.black_1),
        labelSmall: TextStyles.labelSmall.copyWith(color: themeColors.black_1),
      ),
    ],
  );
}
