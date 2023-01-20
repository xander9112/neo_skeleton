import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

@freezed
class UserSettingsModel with _$UserSettingsModel {
  const factory UserSettingsModel({
    @Default(false) bool news,
    @Default(false) bool board,
    @Default(false) bool birthday,
  }) = _UserSettingsModel;

  factory UserSettingsModel.fromJson(Object? json) =>
      _$UserSettingsModelFromJson(json! as Map<String, dynamic>);

  const UserSettingsModel._();

  @override
  Map<String, dynamic> toJson();
}
