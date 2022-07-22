import 'dart:io';

import 'package:flutter/foundation.dart';

class AppConstants {
  static const String projectName = 'NeoflexPortal';
  static const String iOSId = 'com.neoflex.neoSkeleton';
  static const String androidId = 'com.neoflex.neoSkeleton';

  static bool get isIOS => !kIsWeb && Platform.isIOS;
  static bool get isAndroid => !kIsWeb && Platform.isAndroid;
  static bool get isWeb => kIsWeb;
  static int get vacationMaxDays => 28;
}
