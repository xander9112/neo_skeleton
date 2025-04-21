// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  AppInfoModel get appInfo => throw _privateConstructorUsedError;
  DeviceInfoModel get deviceInfo => throw _privateConstructorUsedError;
  AuthSettings get authSettings => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  FetchStatus get status => throw _privateConstructorUsedError;
  bool? get useBiometric => throw _privateConstructorUsedError;
  bool get useLocalAuth => throw _privateConstructorUsedError;
  AppVersionEntity get storeVersion => throw _privateConstructorUsedError;
  ThemeMode? get themeMode => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {AppInfoModel appInfo,
      DeviceInfoModel deviceInfo,
      AuthSettings authSettings,
      String? error,
      FetchStatus status,
      bool? useBiometric,
      bool useLocalAuth,
      AppVersionEntity storeVersion,
      ThemeMode? themeMode,
      Locale? locale});

  $AuthSettingsCopyWith<$Res> get authSettings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInfo = null,
    Object? deviceInfo = null,
    Object? authSettings = null,
    Object? error = freezed,
    Object? status = null,
    Object? useBiometric = freezed,
    Object? useLocalAuth = null,
    Object? storeVersion = null,
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      appInfo: null == appInfo
          ? _value.appInfo
          : appInfo // ignore: cast_nullable_to_non_nullable
              as AppInfoModel,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoModel,
      authSettings: null == authSettings
          ? _value.authSettings
          : authSettings // ignore: cast_nullable_to_non_nullable
              as AuthSettings,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      useBiometric: freezed == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool?,
      useLocalAuth: null == useLocalAuth
          ? _value.useLocalAuth
          : useLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      storeVersion: null == storeVersion
          ? _value.storeVersion
          : storeVersion // ignore: cast_nullable_to_non_nullable
              as AppVersionEntity,
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthSettingsCopyWith<$Res> get authSettings {
    return $AuthSettingsCopyWith<$Res>(_value.authSettings, (value) {
      return _then(_value.copyWith(authSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppInfoModel appInfo,
      DeviceInfoModel deviceInfo,
      AuthSettings authSettings,
      String? error,
      FetchStatus status,
      bool? useBiometric,
      bool useLocalAuth,
      AppVersionEntity storeVersion,
      ThemeMode? themeMode,
      Locale? locale});

  @override
  $AuthSettingsCopyWith<$Res> get authSettings;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInfo = null,
    Object? deviceInfo = null,
    Object? authSettings = null,
    Object? error = freezed,
    Object? status = null,
    Object? useBiometric = freezed,
    Object? useLocalAuth = null,
    Object? storeVersion = null,
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$SettingsStateImpl(
      appInfo: null == appInfo
          ? _value.appInfo
          : appInfo // ignore: cast_nullable_to_non_nullable
              as AppInfoModel,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoModel,
      authSettings: null == authSettings
          ? _value.authSettings
          : authSettings // ignore: cast_nullable_to_non_nullable
              as AuthSettings,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      useBiometric: freezed == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool?,
      useLocalAuth: null == useLocalAuth
          ? _value.useLocalAuth
          : useLocalAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      storeVersion: null == storeVersion
          ? _value.storeVersion
          : storeVersion // ignore: cast_nullable_to_non_nullable
              as AppVersionEntity,
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl extends _SettingsState {
  const _$SettingsStateImpl(
      {required this.appInfo,
      required this.deviceInfo,
      required this.authSettings,
      this.error,
      this.status = FetchStatus.pure,
      this.useBiometric,
      this.useLocalAuth = false,
      this.storeVersion = const AppVersionEntity(major: 0, minor: 0, patch: 0),
      this.themeMode,
      this.locale})
      : super._();

  @override
  final AppInfoModel appInfo;
  @override
  final DeviceInfoModel deviceInfo;
  @override
  final AuthSettings authSettings;
  @override
  final String? error;
  @override
  @JsonKey()
  final FetchStatus status;
  @override
  final bool? useBiometric;
  @override
  @JsonKey()
  final bool useLocalAuth;
  @override
  @JsonKey()
  final AppVersionEntity storeVersion;
  @override
  final ThemeMode? themeMode;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'SettingsState(appInfo: $appInfo, deviceInfo: $deviceInfo, authSettings: $authSettings, error: $error, status: $status, useBiometric: $useBiometric, useLocalAuth: $useLocalAuth, storeVersion: $storeVersion, themeMode: $themeMode, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.appInfo, appInfo) || other.appInfo == appInfo) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.authSettings, authSettings) ||
                other.authSettings == authSettings) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.useBiometric, useBiometric) ||
                other.useBiometric == useBiometric) &&
            (identical(other.useLocalAuth, useLocalAuth) ||
                other.useLocalAuth == useLocalAuth) &&
            (identical(other.storeVersion, storeVersion) ||
                other.storeVersion == storeVersion) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appInfo,
      deviceInfo,
      authSettings,
      error,
      status,
      useBiometric,
      useLocalAuth,
      storeVersion,
      themeMode,
      locale);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {required final AppInfoModel appInfo,
      required final DeviceInfoModel deviceInfo,
      required final AuthSettings authSettings,
      final String? error,
      final FetchStatus status,
      final bool? useBiometric,
      final bool useLocalAuth,
      final AppVersionEntity storeVersion,
      final ThemeMode? themeMode,
      final Locale? locale}) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  @override
  AppInfoModel get appInfo;
  @override
  DeviceInfoModel get deviceInfo;
  @override
  AuthSettings get authSettings;
  @override
  String? get error;
  @override
  FetchStatus get status;
  @override
  bool? get useBiometric;
  @override
  bool get useLocalAuth;
  @override
  AppVersionEntity get storeVersion;
  @override
  ThemeMode? get themeMode;
  @override
  Locale? get locale;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
