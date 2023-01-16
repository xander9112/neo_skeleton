import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../user_agent_parser/_user_agent_parser.dart';
import 'models/_models.dart';

abstract class AppInfo {
  static Future<DeviceInfoModel> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (kIsWeb) {
      WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
      UserAgentParser parser = UserAgentParser();
      Result result = parser.parseResult(webBrowserInfo.userAgent ?? '');

      return DeviceInfoModel(
        model: result.browser?.name ?? '',
        system: webBrowserInfo.platform ?? '',
        version: result.browser?.version ?? '',
      );
    }

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      return DeviceInfoModel(
        model: '${androidInfo.brand} ${androidInfo.model}',
        system: 'Android',
        version: androidInfo.version.release,
      );
    }

    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      return DeviceInfoModel(
        model: iosInfo.name ?? '',
        system: iosInfo.systemName ?? 'iOS',
        version: iosInfo.systemVersion ?? '',
      );
    }

    return const DeviceInfoModel(
      model: '',
      system: '',
      version: '',
    );
  }

  static Future<AppInfoModel> getAppInfo() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    final String appName = packageInfo.appName;
    final String packageName = packageInfo.packageName;
    final String version = packageInfo.version;
    final String buildNumber = packageInfo.buildNumber;

    return AppInfoModel(
      appName: appName,
      packageName: packageName,
      version: version,
      buildNumber: buildNumber,
    );
  }
}
