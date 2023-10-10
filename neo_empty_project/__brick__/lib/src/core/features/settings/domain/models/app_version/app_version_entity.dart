import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_entity.freezed.dart';
part 'app_version_entity.g.dart';

@freezed
class AppVersionEntity with _$AppVersionEntity {
  const factory AppVersionEntity({
    required int major,
    required int minor,
    required int patch,
    int? buildNumber,
  }) = _AppVersionEntity;

  factory AppVersionEntity.fromJson(Object? json) =>
      _$AppVersionEntityFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
