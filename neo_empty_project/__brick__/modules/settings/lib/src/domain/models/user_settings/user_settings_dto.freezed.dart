// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSettingsDTO _$UserSettingsDTOFromJson(Map<String, dynamic> json) {
  return _UserSettingsDTO.fromJson(json);
}

/// @nodoc
mixin _$UserSettingsDTO {
  @JsonKey(fromJson: localeFromJson, toJson: localeToJson)
  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get useLocalAuth => throw _privateConstructorUsedError;

  /// Serializes this UserSettingsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSettingsDTOCopyWith<UserSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsDTOCopyWith<$Res> {
  factory $UserSettingsDTOCopyWith(
          UserSettingsDTO value, $Res Function(UserSettingsDTO) then) =
      _$UserSettingsDTOCopyWithImpl<$Res, UserSettingsDTO>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeFromJson, toJson: localeToJson) Locale locale,
      @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
      ThemeMode themeMode,
      bool useLocalAuth});
}

/// @nodoc
class _$UserSettingsDTOCopyWithImpl<$Res, $Val extends UserSettingsDTO>
    implements $UserSettingsDTOCopyWith<$Res> {
  _$UserSettingsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? themeMode = null,
    Object? useLocalAuth = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      useLocalAuth: null == useLocalAuth
          ? _value.useLocalAuth
          : useLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSettingsDTOImplCopyWith<$Res>
    implements $UserSettingsDTOCopyWith<$Res> {
  factory _$$UserSettingsDTOImplCopyWith(_$UserSettingsDTOImpl value,
          $Res Function(_$UserSettingsDTOImpl) then) =
      __$$UserSettingsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: localeFromJson, toJson: localeToJson) Locale locale,
      @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
      ThemeMode themeMode,
      bool useLocalAuth});
}

/// @nodoc
class __$$UserSettingsDTOImplCopyWithImpl<$Res>
    extends _$UserSettingsDTOCopyWithImpl<$Res, _$UserSettingsDTOImpl>
    implements _$$UserSettingsDTOImplCopyWith<$Res> {
  __$$UserSettingsDTOImplCopyWithImpl(
      _$UserSettingsDTOImpl _value, $Res Function(_$UserSettingsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? themeMode = null,
    Object? useLocalAuth = null,
  }) {
    return _then(_$UserSettingsDTOImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      useLocalAuth: null == useLocalAuth
          ? _value.useLocalAuth
          : useLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSettingsDTOImpl extends _UserSettingsDTO {
  const _$UserSettingsDTOImpl(
      {@JsonKey(fromJson: localeFromJson, toJson: localeToJson)
      required this.locale,
      @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
      required this.themeMode,
      this.useLocalAuth = true})
      : super._();

  factory _$UserSettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSettingsDTOImplFromJson(json);

  @override
  @JsonKey(fromJson: localeFromJson, toJson: localeToJson)
  final Locale locale;
  @override
  @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool useLocalAuth;

  @override
  String toString() {
    return 'UserSettingsDTO(locale: $locale, themeMode: $themeMode, useLocalAuth: $useLocalAuth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsDTOImpl &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.useLocalAuth, useLocalAuth) ||
                other.useLocalAuth == useLocalAuth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locale, themeMode, useLocalAuth);

  /// Create a copy of UserSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsDTOImplCopyWith<_$UserSettingsDTOImpl> get copyWith =>
      __$$UserSettingsDTOImplCopyWithImpl<_$UserSettingsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSettingsDTOImplToJson(
      this,
    );
  }
}

abstract class _UserSettingsDTO extends UserSettingsDTO {
  const factory _UserSettingsDTO(
      {@JsonKey(fromJson: localeFromJson, toJson: localeToJson)
      required final Locale locale,
      @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
      required final ThemeMode themeMode,
      final bool useLocalAuth}) = _$UserSettingsDTOImpl;
  const _UserSettingsDTO._() : super._();

  factory _UserSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$UserSettingsDTOImpl.fromJson;

  @override
  @JsonKey(fromJson: localeFromJson, toJson: localeToJson)
  Locale get locale;
  @override
  @JsonKey(fromJson: themeModeFromJson, toJson: themeModeToJson)
  ThemeMode get themeMode;
  @override
  bool get useLocalAuth;

  /// Create a copy of UserSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSettingsDTOImplCopyWith<_$UserSettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
