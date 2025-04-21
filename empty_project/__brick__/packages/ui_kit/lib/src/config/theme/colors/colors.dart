import 'package:flutter/widgets.dart';

abstract class ThemeColors {
  ThemeColors({required this.primary, required this.colorText});

  final Color primary;
  final Color colorText;
}
