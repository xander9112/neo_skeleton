import 'dart:convert';

import 'package:flutter/widgets.dart';

@immutable
class AppVersionEntity {
  const AppVersionEntity({
    required this.major,
    required this.minor,
    required this.patch,
    this.buildNumber,
  });

  factory AppVersionEntity.fromMap(Map<String, dynamic> map) {
    return AppVersionEntity(
      major: map['major'] as int,
      minor: map['minor'] as int,
      patch: map['patch'] as int,
      buildNumber:
          map['buildNumber'] != null ? map['buildNumber'] as int : null,
    );
  }

  factory AppVersionEntity.fromJson(Map<String, dynamic> json) =>
      AppVersionEntity.fromMap(json);


  final int major;
  final int minor;
  final int patch;
  final int? buildNumber;

  String get fullVersion =>
      '$major.$minor.$patch${buildNumber != null ? '+$buildNumber' : ''}';

  bool get isNotEmpty => major > 0 && minor > 0 && patch > 0;

  bool hasUpdate(AppVersionEntity storeVersion) {
    return storeVersion.major > major ||
        storeVersion.minor > minor ||
        storeVersion.patch > patch;
  }

  bool requiredUpdate(AppVersionEntity storeVersion) {
    return storeVersion.major > major || storeVersion.minor > minor;
  }

  // ignore: prefer_constructors_over_static_methods
  static AppVersionEntity parse(String value) {
    final versionAndBuildNumber = value.split('+');
    final versionArr = versionAndBuildNumber.first.split('.');

    if (versionAndBuildNumber.length == 1) {
      return AppVersionEntity(
        major: int.parse(versionArr[0]),
        minor: int.parse(versionArr[1]),
        patch: int.parse(versionArr[2]),
      );
    }

    return AppVersionEntity(
      major: int.parse(versionArr[0]),
      minor: int.parse(versionArr[1]),
      patch: int.parse(versionArr[2]),
      buildNumber: int.parse(versionAndBuildNumber.last),
    );
  }

  AppVersionEntity copyWith({
    int? major,
    int? minor,
    int? patch,
    int? buildNumber,
  }) {
    return AppVersionEntity(
      major: major ?? this.major,
      minor: minor ?? this.minor,
      patch: patch ?? this.patch,
      buildNumber: buildNumber ?? this.buildNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'major': major,
      'minor': minor,
      'patch': patch,
      'buildNumber': buildNumber,
    };
  }

  Map<String, dynamic> toJson() => toMap();

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'AppVersionEntity(major: $major, minor: $minor, patch: $patch, buildNumber: $buildNumber)';
  }

  @override
  bool operator ==(covariant AppVersionEntity other) {
    if (identical(this, other)) return true;

    return other.major == major &&
        other.minor == minor &&
        other.patch == patch &&
        other.buildNumber == buildNumber;
  }

  @override
  int get hashCode {
    return major.hashCode ^
        minor.hashCode ^
        patch.hashCode ^
        buildNumber.hashCode;
  }
}
