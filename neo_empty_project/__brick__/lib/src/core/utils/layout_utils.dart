// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LayoutUtils {
  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  static const _phoneShortestSide = 600;

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.shortestSide < _phoneShortestSide &&
              !isWeb() &&
              !isWindows()
          ? true
          : false;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.shortestSide >= _phoneShortestSide &&
              !isWeb() &&
              !isWindows()
          ? true
          : false;
}
