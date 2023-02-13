import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  TextExtension get text => Theme.of(this).extension<TextExtension>()!;

  TextTheme get defaultText => Theme.of(this).textTheme;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
