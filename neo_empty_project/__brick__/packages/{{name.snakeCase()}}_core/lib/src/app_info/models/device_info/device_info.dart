// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/widgets.dart';

@immutable
class DeviceInfoModel {
  const DeviceInfoModel({
    required this.model,
    required this.system,
    required this.version,
    required this.deviceId,
  });

  final String model;
  final String system;
  final String version;
  final String deviceId;

  bool get isIOS => system == 'iOS';
  bool get isAndroid => system == 'Android';

  DeviceInfoModel copyWith({
    String? model,
    String? system,
    String? version,
    String? deviceId,
  }) {
    return DeviceInfoModel(
      model: model ?? this.model,
      system: system ?? this.system,
      version: version ?? this.version,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': model,
      'system': system,
      'version': version,
      'deviceId': deviceId,
    };
  }

  factory DeviceInfoModel.fromMap(Map<String, dynamic> map) {
    return DeviceInfoModel(
      model: map['model'] as String,
      system: map['system'] as String,
      version: map['version'] as String,
      deviceId: map['deviceId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DeviceInfoModel.fromJson(String source) =>
      DeviceInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'DeviceInfoModel(model: $model, system: $system, version: $version, deviceId: $deviceId)';
  }

  @override
  bool operator ==(covariant DeviceInfoModel other) {
    if (identical(this, other)) return true;

    return other.model == model &&
        other.system == system &&
        other.version == version &&
        other.deviceId == deviceId;
  }

  @override
  int get hashCode {
    return model.hashCode ^
        system.hashCode ^
        version.hashCode ^
        deviceId.hashCode;
  }
}
