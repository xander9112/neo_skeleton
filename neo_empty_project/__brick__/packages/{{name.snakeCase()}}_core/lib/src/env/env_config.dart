import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

enum EnvConfig {
  dev,
  prod;

  bool get isDev => this == dev;
}

abstract class Env {
  static Future<EnvConfig> getCurrentEnv() async {
    WidgetsFlutterBinding.ensureInitialized();

    try {
      late final String? flavor;

      if (kIsWeb) {
        flavor = const String.fromEnvironment('flavor');
      } else {
        flavor = await const MethodChannel('flavor')
            .invokeMethod<String>('getFlavor');
      }

      return EnvConfig.values
              .firstWhereOrNull((EnvConfig env) => env.name == flavor) ??
          EnvConfig.prod;
    } catch (_) {
      return EnvConfig.prod;
    }
  }
}
