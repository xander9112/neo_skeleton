// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

@immutable
class AppInfoModel {
  const AppInfoModel({
    required this.appName,
    required this.packageName,
    required this.version,
  });

  final String appName;
  final String packageName;
  final AppVersionEntity version;

  String get fullVersion => '$appName ${version.fullVersion}';

  AppInfoModel copyWith({
    String? appName,
    String? packageName,
    AppVersionEntity? version,
  }) {
    return AppInfoModel(
      appName: appName ?? this.appName,
      packageName: packageName ?? this.packageName,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'packageName': packageName,
      'version': version.toMap(),
    };
  }

  factory AppInfoModel.fromMap(Map<String, dynamic> map) {
    return AppInfoModel(
      appName: map['appName'] as String,
      packageName: map['packageName'] as String,
      version: AppVersionEntity.fromMap(map['version'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AppInfoModel.fromJson(String source) =>
      AppInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'AppInfoModel(appName: $appName, packageName: $packageName, version: $version)';
  }

  @override
  bool operator ==(covariant AppInfoModel other) {
    if (identical(this, other)) return true;

    return other.appName == appName &&
        other.packageName == packageName &&
        other.version == version;
  }

  @override
  int get hashCode {
    return appName.hashCode ^ packageName.hashCode ^ version.hashCode;
  }
}
