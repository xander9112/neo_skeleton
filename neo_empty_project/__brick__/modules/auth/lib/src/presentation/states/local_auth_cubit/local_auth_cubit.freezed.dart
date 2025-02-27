// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalAuthState _$LocalAuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _LocalAuthInitialState.fromJson(json);
    case 'success':
      return _LocalAuthSuccessState.fromJson(json);
    case 'resetPinCode':
      return _LocalAuthResetPinState.fromJson(json);
    case 'createPin':
      return _LocalAuthCreatePin.fromJson(json);
    case 'enterPin':
      return _LocalAuthEnterPin.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LocalAuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LocalAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() resetPinCode,
    required TResult Function(
            String? error, bool confirm, int length, FetchStatus status)
        createPin,
    required TResult Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)
        enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? resetPinCode,
    TResult? Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult? Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)?
        enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? resetPinCode,
    TResult Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult Function(BiometricSupportModel biometricSupportModel, String? error,
            int length, int errorCount, FetchStatus status)?
        enterPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthResetPinState value) resetPinCode,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this LocalAuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthStateCopyWith<$Res> {
  factory $LocalAuthStateCopyWith(
          LocalAuthState value, $Res Function(LocalAuthState) then) =
      _$LocalAuthStateCopyWithImpl<$Res, LocalAuthState>;
}

/// @nodoc
class _$LocalAuthStateCopyWithImpl<$Res, $Val extends LocalAuthState>
    implements $LocalAuthStateCopyWith<$Res> {
  _$LocalAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocalAuthInitialStateImplCopyWith<$Res> {
  factory _$$LocalAuthInitialStateImplCopyWith(
          _$LocalAuthInitialStateImpl value,
          $Res Function(_$LocalAuthInitialStateImpl) then) =
      __$$LocalAuthInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalAuthInitialStateImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$LocalAuthInitialStateImpl>
    implements _$$LocalAuthInitialStateImplCopyWith<$Res> {
  __$$LocalAuthInitialStateImplCopyWithImpl(_$LocalAuthInitialStateImpl _value,
      $Res Function(_$LocalAuthInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LocalAuthInitialStateImpl extends _LocalAuthInitialState {
  const _$LocalAuthInitialStateImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$LocalAuthInitialStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAuthInitialStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAuthInitialStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() resetPinCode,
    required TResult Function(
            String? error, bool confirm, int length, FetchStatus status)
        createPin,
    required TResult Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)
        enterPin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? resetPinCode,
    TResult? Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult? Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)?
        enterPin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? resetPinCode,
    TResult Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult Function(BiometricSupportModel biometricSupportModel, String? error,
            int length, int errorCount, FetchStatus status)?
        enterPin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthResetPinState value) resetPinCode,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAuthInitialStateImplToJson(
      this,
    );
  }
}

abstract class _LocalAuthInitialState extends LocalAuthState {
  const factory _LocalAuthInitialState() = _$LocalAuthInitialStateImpl;
  const _LocalAuthInitialState._() : super._();

  factory _LocalAuthInitialState.fromJson(Map<String, dynamic> json) =
      _$LocalAuthInitialStateImpl.fromJson;
}

/// @nodoc
abstract class _$$LocalAuthSuccessStateImplCopyWith<$Res> {
  factory _$$LocalAuthSuccessStateImplCopyWith(
          _$LocalAuthSuccessStateImpl value,
          $Res Function(_$LocalAuthSuccessStateImpl) then) =
      __$$LocalAuthSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalAuthSuccessStateImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$LocalAuthSuccessStateImpl>
    implements _$$LocalAuthSuccessStateImplCopyWith<$Res> {
  __$$LocalAuthSuccessStateImplCopyWithImpl(_$LocalAuthSuccessStateImpl _value,
      $Res Function(_$LocalAuthSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LocalAuthSuccessStateImpl extends _LocalAuthSuccessState {
  const _$LocalAuthSuccessStateImpl({final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$LocalAuthSuccessStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAuthSuccessStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAuthSuccessStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() resetPinCode,
    required TResult Function(
            String? error, bool confirm, int length, FetchStatus status)
        createPin,
    required TResult Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)
        enterPin,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? resetPinCode,
    TResult? Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult? Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)?
        enterPin,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? resetPinCode,
    TResult Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult Function(BiometricSupportModel biometricSupportModel, String? error,
            int length, int errorCount, FetchStatus status)?
        enterPin,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthResetPinState value) resetPinCode,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAuthSuccessStateImplToJson(
      this,
    );
  }
}

abstract class _LocalAuthSuccessState extends LocalAuthState {
  const factory _LocalAuthSuccessState() = _$LocalAuthSuccessStateImpl;
  const _LocalAuthSuccessState._() : super._();

  factory _LocalAuthSuccessState.fromJson(Map<String, dynamic> json) =
      _$LocalAuthSuccessStateImpl.fromJson;
}

/// @nodoc
abstract class _$$LocalAuthResetPinStateImplCopyWith<$Res> {
  factory _$$LocalAuthResetPinStateImplCopyWith(
          _$LocalAuthResetPinStateImpl value,
          $Res Function(_$LocalAuthResetPinStateImpl) then) =
      __$$LocalAuthResetPinStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalAuthResetPinStateImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$LocalAuthResetPinStateImpl>
    implements _$$LocalAuthResetPinStateImplCopyWith<$Res> {
  __$$LocalAuthResetPinStateImplCopyWithImpl(
      _$LocalAuthResetPinStateImpl _value,
      $Res Function(_$LocalAuthResetPinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LocalAuthResetPinStateImpl extends _LocalAuthResetPinState {
  const _$LocalAuthResetPinStateImpl({final String? $type})
      : $type = $type ?? 'resetPinCode',
        super._();

  factory _$LocalAuthResetPinStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAuthResetPinStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.resetPinCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAuthResetPinStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() resetPinCode,
    required TResult Function(
            String? error, bool confirm, int length, FetchStatus status)
        createPin,
    required TResult Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)
        enterPin,
  }) {
    return resetPinCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? resetPinCode,
    TResult? Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult? Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)?
        enterPin,
  }) {
    return resetPinCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? resetPinCode,
    TResult Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult Function(BiometricSupportModel biometricSupportModel, String? error,
            int length, int errorCount, FetchStatus status)?
        enterPin,
    required TResult orElse(),
  }) {
    if (resetPinCode != null) {
      return resetPinCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthResetPinState value) resetPinCode,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) {
    return resetPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) {
    return resetPinCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) {
    if (resetPinCode != null) {
      return resetPinCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAuthResetPinStateImplToJson(
      this,
    );
  }
}

abstract class _LocalAuthResetPinState extends LocalAuthState {
  const factory _LocalAuthResetPinState() = _$LocalAuthResetPinStateImpl;
  const _LocalAuthResetPinState._() : super._();

  factory _LocalAuthResetPinState.fromJson(Map<String, dynamic> json) =
      _$LocalAuthResetPinStateImpl.fromJson;
}

/// @nodoc
abstract class _$$LocalAuthCreatePinImplCopyWith<$Res> {
  factory _$$LocalAuthCreatePinImplCopyWith(_$LocalAuthCreatePinImpl value,
          $Res Function(_$LocalAuthCreatePinImpl) then) =
      __$$LocalAuthCreatePinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error, bool confirm, int length, FetchStatus status});
}

/// @nodoc
class __$$LocalAuthCreatePinImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$LocalAuthCreatePinImpl>
    implements _$$LocalAuthCreatePinImplCopyWith<$Res> {
  __$$LocalAuthCreatePinImplCopyWithImpl(_$LocalAuthCreatePinImpl _value,
      $Res Function(_$LocalAuthCreatePinImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? confirm = null,
    Object? length = null,
    Object? status = null,
  }) {
    return _then(_$LocalAuthCreatePinImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      confirm: null == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalAuthCreatePinImpl extends _LocalAuthCreatePin {
  const _$LocalAuthCreatePinImpl(
      {this.error,
      this.confirm = false,
      this.length = 4,
      this.status = FetchStatus.pure,
      final String? $type})
      : $type = $type ?? 'createPin',
        super._();

  factory _$LocalAuthCreatePinImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAuthCreatePinImplFromJson(json);

  @override
  final String? error;
  @override
  @JsonKey()
  final bool confirm;
  @override
  @JsonKey()
  final int length;
  @override
  @JsonKey()
  final FetchStatus status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.createPin(error: $error, confirm: $confirm, length: $length, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAuthCreatePinImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.confirm, confirm) || other.confirm == confirm) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, confirm, length, status);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalAuthCreatePinImplCopyWith<_$LocalAuthCreatePinImpl> get copyWith =>
      __$$LocalAuthCreatePinImplCopyWithImpl<_$LocalAuthCreatePinImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() resetPinCode,
    required TResult Function(
            String? error, bool confirm, int length, FetchStatus status)
        createPin,
    required TResult Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)
        enterPin,
  }) {
    return createPin(error, confirm, length, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? resetPinCode,
    TResult? Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult? Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)?
        enterPin,
  }) {
    return createPin?.call(error, confirm, length, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? resetPinCode,
    TResult Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult Function(BiometricSupportModel biometricSupportModel, String? error,
            int length, int errorCount, FetchStatus status)?
        enterPin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin(error, confirm, length, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthResetPinState value) resetPinCode,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) {
    return createPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) {
    return createPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAuthCreatePinImplToJson(
      this,
    );
  }
}

abstract class _LocalAuthCreatePin extends LocalAuthState {
  const factory _LocalAuthCreatePin(
      {final String? error,
      final bool confirm,
      final int length,
      final FetchStatus status}) = _$LocalAuthCreatePinImpl;
  const _LocalAuthCreatePin._() : super._();

  factory _LocalAuthCreatePin.fromJson(Map<String, dynamic> json) =
      _$LocalAuthCreatePinImpl.fromJson;

  String? get error;
  bool get confirm;
  int get length;
  FetchStatus get status;

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalAuthCreatePinImplCopyWith<_$LocalAuthCreatePinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalAuthEnterPinImplCopyWith<$Res> {
  factory _$$LocalAuthEnterPinImplCopyWith(_$LocalAuthEnterPinImpl value,
          $Res Function(_$LocalAuthEnterPinImpl) then) =
      __$$LocalAuthEnterPinImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BiometricSupportModel biometricSupportModel,
      String? error,
      int length,
      int errorCount,
      FetchStatus status});

  $BiometricSupportModelCopyWith<$Res> get biometricSupportModel;
}

/// @nodoc
class __$$LocalAuthEnterPinImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$LocalAuthEnterPinImpl>
    implements _$$LocalAuthEnterPinImplCopyWith<$Res> {
  __$$LocalAuthEnterPinImplCopyWithImpl(_$LocalAuthEnterPinImpl _value,
      $Res Function(_$LocalAuthEnterPinImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biometricSupportModel = null,
    Object? error = freezed,
    Object? length = null,
    Object? errorCount = null,
    Object? status = null,
  }) {
    return _then(_$LocalAuthEnterPinImpl(
      biometricSupportModel: null == biometricSupportModel
          ? _value.biometricSupportModel
          : biometricSupportModel // ignore: cast_nullable_to_non_nullable
              as BiometricSupportModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
    ));
  }

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiometricSupportModelCopyWith<$Res> get biometricSupportModel {
    return $BiometricSupportModelCopyWith<$Res>(_value.biometricSupportModel,
        (value) {
      return _then(_value.copyWith(biometricSupportModel: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalAuthEnterPinImpl extends _LocalAuthEnterPin {
  const _$LocalAuthEnterPinImpl(
      {required this.biometricSupportModel,
      this.error,
      this.length = 4,
      this.errorCount = 0,
      this.status = FetchStatus.pure,
      final String? $type})
      : $type = $type ?? 'enterPin',
        super._();

  factory _$LocalAuthEnterPinImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAuthEnterPinImplFromJson(json);

  @override
  final BiometricSupportModel biometricSupportModel;
  @override
  final String? error;
  @override
  @JsonKey()
  final int length;
  @override
  @JsonKey()
  final int errorCount;
  @override
  @JsonKey()
  final FetchStatus status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.enterPin(biometricSupportModel: $biometricSupportModel, error: $error, length: $length, errorCount: $errorCount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAuthEnterPinImpl &&
            (identical(other.biometricSupportModel, biometricSupportModel) ||
                other.biometricSupportModel == biometricSupportModel) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, biometricSupportModel, error, length, errorCount, status);

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalAuthEnterPinImplCopyWith<_$LocalAuthEnterPinImpl> get copyWith =>
      __$$LocalAuthEnterPinImplCopyWithImpl<_$LocalAuthEnterPinImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() resetPinCode,
    required TResult Function(
            String? error, bool confirm, int length, FetchStatus status)
        createPin,
    required TResult Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)
        enterPin,
  }) {
    return enterPin(biometricSupportModel, error, length, errorCount, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? resetPinCode,
    TResult? Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult? Function(BiometricSupportModel biometricSupportModel,
            String? error, int length, int errorCount, FetchStatus status)?
        enterPin,
  }) {
    return enterPin?.call(
        biometricSupportModel, error, length, errorCount, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? resetPinCode,
    TResult Function(
            String? error, bool confirm, int length, FetchStatus status)?
        createPin,
    TResult Function(BiometricSupportModel biometricSupportModel, String? error,
            int length, int errorCount, FetchStatus status)?
        enterPin,
    required TResult orElse(),
  }) {
    if (enterPin != null) {
      return enterPin(biometricSupportModel, error, length, errorCount, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthResetPinState value) resetPinCode,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) {
    return enterPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) {
    return enterPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthResetPinState value)? resetPinCode,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) {
    if (enterPin != null) {
      return enterPin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAuthEnterPinImplToJson(
      this,
    );
  }
}

abstract class _LocalAuthEnterPin extends LocalAuthState {
  const factory _LocalAuthEnterPin(
      {required final BiometricSupportModel biometricSupportModel,
      final String? error,
      final int length,
      final int errorCount,
      final FetchStatus status}) = _$LocalAuthEnterPinImpl;
  const _LocalAuthEnterPin._() : super._();

  factory _LocalAuthEnterPin.fromJson(Map<String, dynamic> json) =
      _$LocalAuthEnterPinImpl.fromJson;

  BiometricSupportModel get biometricSupportModel;
  String? get error;
  int get length;
  int get errorCount;
  FetchStatus get status;

  /// Create a copy of LocalAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalAuthEnterPinImplCopyWith<_$LocalAuthEnterPinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
