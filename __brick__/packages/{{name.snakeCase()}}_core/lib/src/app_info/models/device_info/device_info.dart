// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DeviceInfoModel {
  const DeviceInfoModel({
    required this.model,
    required this.system,
    required this.version,
  });

  final String model;
  final String system;
  final String version;

  DeviceInfoModel copyWith({
    String? model,
    String? system,
    String? version,
  }) {
    return DeviceInfoModel(
      model: model ?? this.model,
      system: system ?? this.system,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': model,
      'system': system,
      'version': version,
    };
  }

  factory DeviceInfoModel.fromMap(Map<String, dynamic> map) {
    return DeviceInfoModel(
      model: map['model'] as String,
      system: map['system'] as String,
      version: map['version'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DeviceInfoModel.fromJson(String source) =>
      DeviceInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DeviceInfoModel(model: $model, system: $system, version: $version)';

  @override
  bool operator ==(covariant DeviceInfoModel other) {
    if (identical(this, other)) return true;

    return other.model == model &&
        other.system == system &&
        other.version == version;
  }

  @override
  int get hashCode => model.hashCode ^ system.hashCode ^ version.hashCode;

  String get fullVersion => '$model $system:$version';
}
