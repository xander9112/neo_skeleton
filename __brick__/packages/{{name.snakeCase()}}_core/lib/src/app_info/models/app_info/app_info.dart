import 'dart:convert';

class AppInfoModel {
  factory AppInfoModel.fromJson(String source) =>
      AppInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory AppInfoModel.fromMap(Map<String, dynamic> map) {
    return AppInfoModel(
      appName: map['appName'] as String,
      packageName: map['packageName'] as String,
      version: map['version'] as String,
      buildNumber: map['buildNumber'] as String,
    );
  }
  const AppInfoModel({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });

  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;

  AppInfoModel copyWith({
    String? appName,
    String? packageName,
    String? version,
    String? buildNumber,
  }) {
    return AppInfoModel(
      appName: appName ?? this.appName,
      packageName: packageName ?? this.packageName,
      version: version ?? this.version,
      buildNumber: buildNumber ?? this.buildNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'packageName': packageName,
      'version': version,
      'buildNumber': buildNumber,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'AppInfoModel(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber)';
  }

  @override
  bool operator ==(covariant AppInfoModel other) {
    if (identical(this, other)) return true;

    return other.appName == appName &&
        other.packageName == packageName &&
        other.version == version &&
        other.buildNumber == buildNumber;
  }

  @override
  int get hashCode {
    return appName.hashCode ^
        packageName.hashCode ^
        version.hashCode ^
        buildNumber.hashCode;
  }

  String get fullVersion => '$appName $version:$buildNumber';
}
