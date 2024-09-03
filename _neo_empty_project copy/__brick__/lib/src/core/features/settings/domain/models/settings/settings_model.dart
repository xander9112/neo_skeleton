import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    required String title,    
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Object? json) =>
      _$SettingsModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
