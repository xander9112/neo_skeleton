import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

ThemeData createLightTheme() {
  const themeColors = ThemeColors(
    primary: LightThemeColors.primary,
    text: LightThemeColors.colorText,
  );

  return ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.light(
      primary: themeColors.primary,      
    ),
    extensions: <ThemeExtension<dynamic>>[
      themeColors,
      TextExtension(
        displayLarge: TextStyles.displayLarge.copyWith(color: themeColors.text),
        displayMedium:
            TextStyles.displayMedium.copyWith(color: themeColors.text),
        displaySmall: TextStyles.displaySmall.copyWith(color: themeColors.text),
        headlineMedium:
            TextStyles.headlineMedium.copyWith(color: themeColors.text),
        headlineSmall:
            TextStyles.headlineSmall.copyWith(color: themeColors.text),
        titleLarge: TextStyles.titleLarge.copyWith(color: themeColors.text),
        titleMedium: TextStyles.titleMedium.copyWith(color: themeColors.text),
        titleSmall: TextStyles.titleSmall.copyWith(color: themeColors.text),
        bodyLarge: TextStyles.bodyLarge.copyWith(color: themeColors.text),
        bodyMedium: TextStyles.bodyMedium.copyWith(color: themeColors.text),
        labelLarge: TextStyles.labelLarge.copyWith(color: themeColors.text),
        bodySmall: TextStyles.bodySmall.copyWith(color: themeColors.text),
        labelSmall: TextStyles.labelSmall.copyWith(color: themeColors.text),
      ),
    ],
  );
}
