// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pincode_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PinCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)
        initial,
    required TResult Function(
            String tempPinCode, String pinCode, bool isChanging)
        repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult? Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult? Function(bool hasPinCode, String? pinCode)? success,
    TResult? Function(String error, bool logout)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Repeat value)? repeat,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinCodeStateCopyWith<$Res> {
  factory $PinCodeStateCopyWith(
          PinCodeState value, $Res Function(PinCodeState) then) =
      _$PinCodeStateCopyWithImpl<$Res, PinCodeState>;
}

/// @nodoc
class _$PinCodeStateCopyWithImpl<$Res, $Val extends PinCodeState>
    implements $PinCodeStateCopyWith<$Res> {
  _$PinCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String pinCode,
      bool hasPinCode,
      bool isChanging,
      BiometricSupportModel biometric,
      int attempts});

  $BiometricSupportModelCopyWith<$Res> get biometric;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinCode = null,
    Object? hasPinCode = null,
    Object? isChanging = null,
    Object? biometric = null,
    Object? attempts = null,
  }) {
    return _then(_$_Initial(
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      hasPinCode: null == hasPinCode
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isChanging: null == isChanging
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
      biometric: null == biometric
          ? _value.biometric
          : biometric // ignore: cast_nullable_to_non_nullable
              as BiometricSupportModel,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BiometricSupportModelCopyWith<$Res> get biometric {
    return $BiometricSupportModelCopyWith<$Res>(_value.biometric, (value) {
      return _then(_value.copyWith(biometric: value));
    });
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.pinCode = '',
      this.hasPinCode = false,
      this.isChanging = false,
      this.biometric = const BiometricSupportModel(),
      this.attempts = 0});

  @override
  @JsonKey()
  final String pinCode;
  @override
  @JsonKey()
  final bool hasPinCode;
  @override
  @JsonKey()
  final bool isChanging;
  @override
  @JsonKey()
  final BiometricSupportModel biometric;
  @override
  @JsonKey()
  final int attempts;

  @override
  String toString() {
    return 'PinCodeState.initial(pinCode: $pinCode, hasPinCode: $hasPinCode, isChanging: $isChanging, biometric: $biometric, attempts: $attempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.hasPinCode, hasPinCode) ||
                other.hasPinCode == hasPinCode) &&
            (identical(other.isChanging, isChanging) ||
                other.isChanging == isChanging) &&
            (identical(other.biometric, biometric) ||
                other.biometric == biometric) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pinCode, hasPinCode, isChanging, biometric, attempts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)
        initial,
    required TResult Function(
            String tempPinCode, String pinCode, bool isChanging)
        repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return initial(pinCode, hasPinCode, isChanging, biometric, attempts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult? Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult? Function(bool hasPinCode, String? pinCode)? success,
    TResult? Function(String error, bool logout)? error,
  }) {
    return initial?.call(pinCode, hasPinCode, isChanging, biometric, attempts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pinCode, hasPinCode, isChanging, biometric, attempts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Repeat value)? repeat,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PinCodeState {
  const factory _Initial(
      {final String pinCode,
      final bool hasPinCode,
      final bool isChanging,
      final BiometricSupportModel biometric,
      final int attempts}) = _$_Initial;

  String get pinCode;
  bool get hasPinCode;
  bool get isChanging;
  BiometricSupportModel get biometric;
  int get attempts;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RepeatCopyWith<$Res> {
  factory _$$_RepeatCopyWith(_$_Repeat value, $Res Function(_$_Repeat) then) =
      __$$_RepeatCopyWithImpl<$Res>;
  @useResult
  $Res call({String tempPinCode, String pinCode, bool isChanging});
}

/// @nodoc
class __$$_RepeatCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res, _$_Repeat>
    implements _$$_RepeatCopyWith<$Res> {
  __$$_RepeatCopyWithImpl(_$_Repeat _value, $Res Function(_$_Repeat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempPinCode = null,
    Object? pinCode = null,
    Object? isChanging = null,
  }) {
    return _then(_$_Repeat(
      tempPinCode: null == tempPinCode
          ? _value.tempPinCode
          : tempPinCode // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      isChanging: null == isChanging
          ? _value.isChanging
          : isChanging // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Repeat implements _Repeat {
  const _$_Repeat(
      {required this.tempPinCode, this.pinCode = '', this.isChanging = false});

  @override
  final String tempPinCode;
  @override
  @JsonKey()
  final String pinCode;
  @override
  @JsonKey()
  final bool isChanging;

  @override
  String toString() {
    return 'PinCodeState.repeat(tempPinCode: $tempPinCode, pinCode: $pinCode, isChanging: $isChanging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repeat &&
            (identical(other.tempPinCode, tempPinCode) ||
                other.tempPinCode == tempPinCode) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.isChanging, isChanging) ||
                other.isChanging == isChanging));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tempPinCode, pinCode, isChanging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepeatCopyWith<_$_Repeat> get copyWith =>
      __$$_RepeatCopyWithImpl<_$_Repeat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)
        initial,
    required TResult Function(
            String tempPinCode, String pinCode, bool isChanging)
        repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return repeat(tempPinCode, pinCode, isChanging);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult? Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult? Function(bool hasPinCode, String? pinCode)? success,
    TResult? Function(String error, bool logout)? error,
  }) {
    return repeat?.call(tempPinCode, pinCode, isChanging);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (repeat != null) {
      return repeat(tempPinCode, pinCode, isChanging);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return repeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Repeat value)? repeat,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return repeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (repeat != null) {
      return repeat(this);
    }
    return orElse();
  }
}

abstract class _Repeat implements PinCodeState {
  const factory _Repeat(
      {required final String tempPinCode,
      final String pinCode,
      final bool isChanging}) = _$_Repeat;

  String get tempPinCode;
  String get pinCode;
  bool get isChanging;
  @JsonKey(ignore: true)
  _$$_RepeatCopyWith<_$_Repeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasPinCode, String? pinCode});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasPinCode = null,
    Object? pinCode = freezed,
  }) {
    return _then(_$_Success(
      hasPinCode: null == hasPinCode
          ? _value.hasPinCode
          : hasPinCode // ignore: cast_nullable_to_non_nullable
              as bool,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({this.hasPinCode = false, this.pinCode});

  @override
  @JsonKey()
  final bool hasPinCode;
  @override
  final String? pinCode;

  @override
  String toString() {
    return 'PinCodeState.success(hasPinCode: $hasPinCode, pinCode: $pinCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.hasPinCode, hasPinCode) ||
                other.hasPinCode == hasPinCode) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasPinCode, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)
        initial,
    required TResult Function(
            String tempPinCode, String pinCode, bool isChanging)
        repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return success(hasPinCode, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult? Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult? Function(bool hasPinCode, String? pinCode)? success,
    TResult? Function(String error, bool logout)? error,
  }) {
    return success?.call(hasPinCode, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(hasPinCode, pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Repeat value)? repeat,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PinCodeState {
  const factory _Success({final bool hasPinCode, final String? pinCode}) =
      _$_Success;

  bool get hasPinCode;
  String? get pinCode;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, bool logout});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PinCodeStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? logout = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      logout: null == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error, this.logout = false});

  @override
  final String error;
  @override
  @JsonKey()
  final bool logout;

  @override
  String toString() {
    return 'PinCodeState.error(error: $error, logout: $logout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.logout, logout) || other.logout == logout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, logout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)
        initial,
    required TResult Function(
            String tempPinCode, String pinCode, bool isChanging)
        repeat,
    required TResult Function(bool hasPinCode, String? pinCode) success,
    required TResult Function(String error, bool logout) error,
  }) {
    return error(this.error, logout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult? Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult? Function(bool hasPinCode, String? pinCode)? success,
    TResult? Function(String error, bool logout)? error,
  }) {
    return error?.call(this.error, logout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pinCode, bool hasPinCode, bool isChanging,
            BiometricSupportModel biometric, int attempts)?
        initial,
    TResult Function(String tempPinCode, String pinCode, bool isChanging)?
        repeat,
    TResult Function(bool hasPinCode, String? pinCode)? success,
    TResult Function(String error, bool logout)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, logout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Repeat value) repeat,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Repeat value)? repeat,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Repeat value)? repeat,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PinCodeState {
  const factory _Error({required final String error, final bool logout}) =
      _$_Error;

  String get error;
  bool get logout;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
