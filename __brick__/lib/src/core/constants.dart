import 'dart:io';

import 'package:flutter/foundation.dart';

class AppConstants {
  static const String projectName = '{{#pascalCase}}{{name}}{{/pascalCase}}';
  static const String iOSId =
      'com.neoflex.{{#camelCase}}{{name}}{{/camelCase}}';
  static const String androidId =
      'com.neoflex.{{#camelCase}}{{name}}{{/camelCase}}';

  static bool get isIOS => !kIsWeb && Platform.isIOS;
  static bool get isAndroid => !kIsWeb && Platform.isAndroid;
  static bool get isWeb => kIsWeb;
}
