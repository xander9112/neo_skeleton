import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_settings.freezed.dart';
part 'auth_settings.g.dart';

@freezed
abstract class AuthSettings with _$AuthSettings {
  const factory AuthSettings({
    required bool useBiometric,
    required bool useLocalAuth,
  }) = _AuthSettings;

  factory AuthSettings.fromJson(Object? json) =>
      _$AuthSettingsFromJson(json! as Map<String, dynamic>);

  const AuthSettings._();

  @override
  Map<String, dynamic> toJson();

  bool get canUseLocalAuth => !kIsWeb && useLocalAuth;
}
