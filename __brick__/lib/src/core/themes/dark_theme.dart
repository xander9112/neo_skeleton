import 'package:flutter/material.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[],
    brightness: Brightness.dark,
  );
}
