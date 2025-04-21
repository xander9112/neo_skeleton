// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'dart:io';

import 'package:flutter/foundation.dart';

bool isWeb() => kIsWeb;

bool isWindows() => kIsWeb ? false : Platform.isWindows;

bool isAndroid() => kIsWeb ? false : Platform.isAndroid;

bool isIOS() => kIsWeb ? false : Platform.isIOS;
