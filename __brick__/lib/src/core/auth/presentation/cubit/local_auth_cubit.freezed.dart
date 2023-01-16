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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalAuthState _$LocalAuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _LocalAuthInitialState.fromJson(json);
    case 'success':
      return _LocalAuthSuccessState.fromJson(json);
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
    required TResult Function(String? error, bool confirm, int length)
        createPin,
    required TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)
        enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, bool confirm, int length)? createPin,
    TResult? Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, bool confirm, int length)? createPin,
    TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
    required TResult Function(_LocalAuthCreatePin value) createPin,
    required TResult Function(_LocalAuthEnterPin value) enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAuthInitialState value)? initial,
    TResult? Function(_LocalAuthSuccessState value)? success,
    TResult? Function(_LocalAuthCreatePin value)? createPin,
    TResult? Function(_LocalAuthEnterPin value)? enterPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAuthInitialState value)? initial,
    TResult Function(_LocalAuthSuccessState value)? success,
    TResult Function(_LocalAuthCreatePin value)? createPin,
    TResult Function(_LocalAuthEnterPin value)? enterPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
}

/// @nodoc
abstract class _$$_LocalAuthInitialStateCopyWith<$Res> {
  factory _$$_LocalAuthInitialStateCopyWith(_$_LocalAuthInitialState value,
          $Res Function(_$_LocalAuthInitialState) then) =
      __$$_LocalAuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocalAuthInitialStateCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$_LocalAuthInitialState>
    implements _$$_LocalAuthInitialStateCopyWith<$Res> {
  __$$_LocalAuthInitialStateCopyWithImpl(_$_LocalAuthInitialState _value,
      $Res Function(_$_LocalAuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LocalAuthInitialState extends _LocalAuthInitialState {
  const _$_LocalAuthInitialState({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$_LocalAuthInitialState.fromJson(Map<String, dynamic> json) =>
      _$$_LocalAuthInitialStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocalAuthInitialState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
    required TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)
        enterPin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, bool confirm, int length)? createPin,
    TResult? Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, bool confirm, int length)? createPin,
    TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
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
    return _$$_LocalAuthInitialStateToJson(
      this,
    );
  }
}

abstract class _LocalAuthInitialState extends LocalAuthState {
  const factory _LocalAuthInitialState() = _$_LocalAuthInitialState;
  const _LocalAuthInitialState._() : super._();

  factory _LocalAuthInitialState.fromJson(Map<String, dynamic> json) =
      _$_LocalAuthInitialState.fromJson;
}

/// @nodoc
abstract class _$$_LocalAuthSuccessStateCopyWith<$Res> {
  factory _$$_LocalAuthSuccessStateCopyWith(_$_LocalAuthSuccessState value,
          $Res Function(_$_LocalAuthSuccessState) then) =
      __$$_LocalAuthSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocalAuthSuccessStateCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$_LocalAuthSuccessState>
    implements _$$_LocalAuthSuccessStateCopyWith<$Res> {
  __$$_LocalAuthSuccessStateCopyWithImpl(_$_LocalAuthSuccessState _value,
      $Res Function(_$_LocalAuthSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LocalAuthSuccessState extends _LocalAuthSuccessState {
  const _$_LocalAuthSuccessState({final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$_LocalAuthSuccessState.fromJson(Map<String, dynamic> json) =>
      _$$_LocalAuthSuccessStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocalAuthSuccessState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
    required TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)
        enterPin,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, bool confirm, int length)? createPin,
    TResult? Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, bool confirm, int length)? createPin,
    TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
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
    return _$$_LocalAuthSuccessStateToJson(
      this,
    );
  }
}

abstract class _LocalAuthSuccessState extends LocalAuthState {
  const factory _LocalAuthSuccessState() = _$_LocalAuthSuccessState;
  const _LocalAuthSuccessState._() : super._();

  factory _LocalAuthSuccessState.fromJson(Map<String, dynamic> json) =
      _$_LocalAuthSuccessState.fromJson;
}

/// @nodoc
abstract class _$$_LocalAuthCreatePinCopyWith<$Res> {
  factory _$$_LocalAuthCreatePinCopyWith(_$_LocalAuthCreatePin value,
          $Res Function(_$_LocalAuthCreatePin) then) =
      __$$_LocalAuthCreatePinCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error, bool confirm, int length});
}

/// @nodoc
class __$$_LocalAuthCreatePinCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$_LocalAuthCreatePin>
    implements _$$_LocalAuthCreatePinCopyWith<$Res> {
  __$$_LocalAuthCreatePinCopyWithImpl(
      _$_LocalAuthCreatePin _value, $Res Function(_$_LocalAuthCreatePin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? confirm = null,
    Object? length = null,
  }) {
    return _then(_$_LocalAuthCreatePin(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalAuthCreatePin extends _LocalAuthCreatePin {
  const _$_LocalAuthCreatePin(
      {this.error, this.confirm = false, this.length = 4, final String? $type})
      : $type = $type ?? 'createPin',
        super._();

  factory _$_LocalAuthCreatePin.fromJson(Map<String, dynamic> json) =>
      _$$_LocalAuthCreatePinFromJson(json);

  @override
  final String? error;
  @override
  @JsonKey()
  final bool confirm;
  @override
  @JsonKey()
  final int length;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.createPin(error: $error, confirm: $confirm, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalAuthCreatePin &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.confirm, confirm) || other.confirm == confirm) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, confirm, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalAuthCreatePinCopyWith<_$_LocalAuthCreatePin> get copyWith =>
      __$$_LocalAuthCreatePinCopyWithImpl<_$_LocalAuthCreatePin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
    required TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)
        enterPin,
  }) {
    return createPin(error, confirm, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, bool confirm, int length)? createPin,
    TResult? Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
  }) {
    return createPin?.call(error, confirm, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, bool confirm, int length)? createPin,
    TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin(error, confirm, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
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
    return _$$_LocalAuthCreatePinToJson(
      this,
    );
  }
}

abstract class _LocalAuthCreatePin extends LocalAuthState {
  const factory _LocalAuthCreatePin(
      {final String? error,
      final bool confirm,
      final int length}) = _$_LocalAuthCreatePin;
  const _LocalAuthCreatePin._() : super._();

  factory _LocalAuthCreatePin.fromJson(Map<String, dynamic> json) =
      _$_LocalAuthCreatePin.fromJson;

  String? get error;
  bool get confirm;
  int get length;
  @JsonKey(ignore: true)
  _$$_LocalAuthCreatePinCopyWith<_$_LocalAuthCreatePin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocalAuthEnterPinCopyWith<$Res> {
  factory _$$_LocalAuthEnterPinCopyWith(_$_LocalAuthEnterPin value,
          $Res Function(_$_LocalAuthEnterPin) then) =
      __$$_LocalAuthEnterPinCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? error, int length, BiometricSupportModel biometricSupportModel});

  $BiometricSupportModelCopyWith<$Res> get biometricSupportModel;
}

/// @nodoc
class __$$_LocalAuthEnterPinCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$_LocalAuthEnterPin>
    implements _$$_LocalAuthEnterPinCopyWith<$Res> {
  __$$_LocalAuthEnterPinCopyWithImpl(
      _$_LocalAuthEnterPin _value, $Res Function(_$_LocalAuthEnterPin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? length = null,
    Object? biometricSupportModel = null,
  }) {
    return _then(_$_LocalAuthEnterPin(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      biometricSupportModel: null == biometricSupportModel
          ? _value.biometricSupportModel
          : biometricSupportModel // ignore: cast_nullable_to_non_nullable
              as BiometricSupportModel,
    ));
  }

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
class _$_LocalAuthEnterPin extends _LocalAuthEnterPin {
  const _$_LocalAuthEnterPin(
      {this.error,
      this.length = 4,
      required this.biometricSupportModel,
      final String? $type})
      : $type = $type ?? 'enterPin',
        super._();

  factory _$_LocalAuthEnterPin.fromJson(Map<String, dynamic> json) =>
      _$$_LocalAuthEnterPinFromJson(json);

  @override
  final String? error;
  @override
  @JsonKey()
  final int length;
  @override
  final BiometricSupportModel biometricSupportModel;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocalAuthState.enterPin(error: $error, length: $length, biometricSupportModel: $biometricSupportModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalAuthEnterPin &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.biometricSupportModel, biometricSupportModel) ||
                other.biometricSupportModel == biometricSupportModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, length, biometricSupportModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalAuthEnterPinCopyWith<_$_LocalAuthEnterPin> get copyWith =>
      __$$_LocalAuthEnterPinCopyWithImpl<_$_LocalAuthEnterPin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
    required TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)
        enterPin,
  }) {
    return enterPin(error, length, biometricSupportModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, bool confirm, int length)? createPin,
    TResult? Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
  }) {
    return enterPin?.call(error, length, biometricSupportModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, bool confirm, int length)? createPin,
    TResult Function(String? error, int length,
            BiometricSupportModel biometricSupportModel)?
        enterPin,
    required TResult orElse(),
  }) {
    if (enterPin != null) {
      return enterPin(error, length, biometricSupportModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAuthInitialState value) initial,
    required TResult Function(_LocalAuthSuccessState value) success,
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
    return _$$_LocalAuthEnterPinToJson(
      this,
    );
  }
}

abstract class _LocalAuthEnterPin extends LocalAuthState {
  const factory _LocalAuthEnterPin(
          {final String? error,
          final int length,
          required final BiometricSupportModel biometricSupportModel}) =
      _$_LocalAuthEnterPin;
  const _LocalAuthEnterPin._() : super._();

  factory _LocalAuthEnterPin.fromJson(Map<String, dynamic> json) =
      _$_LocalAuthEnterPin.fromJson;

  String? get error;
  int get length;
  BiometricSupportModel get biometricSupportModel;
  @JsonKey(ignore: true)
  _$$_LocalAuthEnterPinCopyWith<_$_LocalAuthEnterPin> get copyWith =>
      throw _privateConstructorUsedError;
}
