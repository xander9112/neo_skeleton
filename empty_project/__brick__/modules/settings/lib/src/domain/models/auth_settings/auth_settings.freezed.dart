// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthSettings _$AuthSettingsFromJson(Map<String, dynamic> json) {
  return _AuthSettings.fromJson(json);
}

/// @nodoc
mixin _$AuthSettings {
  bool get useBiometric => throw _privateConstructorUsedError;
  bool get useLocalAuth => throw _privateConstructorUsedError;

  /// Serializes this AuthSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthSettingsCopyWith<AuthSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSettingsCopyWith<$Res> {
  factory $AuthSettingsCopyWith(
          AuthSettings value, $Res Function(AuthSettings) then) =
      _$AuthSettingsCopyWithImpl<$Res, AuthSettings>;
  @useResult
  $Res call({bool useBiometric, bool useLocalAuth});
}

/// @nodoc
class _$AuthSettingsCopyWithImpl<$Res, $Val extends AuthSettings>
    implements $AuthSettingsCopyWith<$Res> {
  _$AuthSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useBiometric = null,
    Object? useLocalAuth = null,
  }) {
    return _then(_value.copyWith(
      useBiometric: null == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool,
      useLocalAuth: null == useLocalAuth
          ? _value.useLocalAuth
          : useLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSettingsImplCopyWith<$Res>
    implements $AuthSettingsCopyWith<$Res> {
  factory _$$AuthSettingsImplCopyWith(
          _$AuthSettingsImpl value, $Res Function(_$AuthSettingsImpl) then) =
      __$$AuthSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool useBiometric, bool useLocalAuth});
}

/// @nodoc
class __$$AuthSettingsImplCopyWithImpl<$Res>
    extends _$AuthSettingsCopyWithImpl<$Res, _$AuthSettingsImpl>
    implements _$$AuthSettingsImplCopyWith<$Res> {
  __$$AuthSettingsImplCopyWithImpl(
      _$AuthSettingsImpl _value, $Res Function(_$AuthSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useBiometric = null,
    Object? useLocalAuth = null,
  }) {
    return _then(_$AuthSettingsImpl(
      useBiometric: null == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool,
      useLocalAuth: null == useLocalAuth
          ? _value.useLocalAuth
          : useLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthSettingsImpl extends _AuthSettings with DiagnosticableTreeMixin {
  const _$AuthSettingsImpl(
      {required this.useBiometric, required this.useLocalAuth})
      : super._();

  factory _$AuthSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthSettingsImplFromJson(json);

  @override
  final bool useBiometric;
  @override
  final bool useLocalAuth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthSettings(useBiometric: $useBiometric, useLocalAuth: $useLocalAuth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthSettings'))
      ..add(DiagnosticsProperty('useBiometric', useBiometric))
      ..add(DiagnosticsProperty('useLocalAuth', useLocalAuth));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSettingsImpl &&
            (identical(other.useBiometric, useBiometric) ||
                other.useBiometric == useBiometric) &&
            (identical(other.useLocalAuth, useLocalAuth) ||
                other.useLocalAuth == useLocalAuth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, useBiometric, useLocalAuth);

  /// Create a copy of AuthSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSettingsImplCopyWith<_$AuthSettingsImpl> get copyWith =>
      __$$AuthSettingsImplCopyWithImpl<_$AuthSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthSettingsImplToJson(
      this,
    );
  }
}

abstract class _AuthSettings extends AuthSettings {
  const factory _AuthSettings(
      {required final bool useBiometric,
      required final bool useLocalAuth}) = _$AuthSettingsImpl;
  const _AuthSettings._() : super._();

  factory _AuthSettings.fromJson(Map<String, dynamic> json) =
      _$AuthSettingsImpl.fromJson;

  @override
  bool get useBiometric;
  @override
  bool get useLocalAuth;

  /// Create a copy of AuthSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSettingsImplCopyWith<_$AuthSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
