// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pin_code_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePinCodeState _$ChangePinCodeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _ChangePinCodeInitial.fromJson(json);
    case 'success':
      return _ChangePinCodeSuccess.fromJson(json);
    case 'enterPin':
      return _ChangePinCodeEnterPin.fromJson(json);
    case 'createPin':
      return _ChangePinCodeCreatePin.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ChangePinCodeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChangePinCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, int length) enterPin,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, int length)? enterPin,
    TResult? Function(String? error, bool confirm, int length)? createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, int length)? enterPin,
    TResult Function(String? error, bool confirm, int length)? createPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePinCodeInitial value) initial,
    required TResult Function(_ChangePinCodeSuccess value) success,
    required TResult Function(_ChangePinCodeEnterPin value) enterPin,
    required TResult Function(_ChangePinCodeCreatePin value) createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePinCodeInitial value)? initial,
    TResult? Function(_ChangePinCodeSuccess value)? success,
    TResult? Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult? Function(_ChangePinCodeCreatePin value)? createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePinCodeInitial value)? initial,
    TResult Function(_ChangePinCodeSuccess value)? success,
    TResult Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult Function(_ChangePinCodeCreatePin value)? createPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChangePinCodeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePinCodeStateCopyWith<$Res> {
  factory $ChangePinCodeStateCopyWith(
          ChangePinCodeState value, $Res Function(ChangePinCodeState) then) =
      _$ChangePinCodeStateCopyWithImpl<$Res, ChangePinCodeState>;
}

/// @nodoc
class _$ChangePinCodeStateCopyWithImpl<$Res, $Val extends ChangePinCodeState>
    implements $ChangePinCodeStateCopyWith<$Res> {
  _$ChangePinCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangePinCodeInitialImplCopyWith<$Res> {
  factory _$$ChangePinCodeInitialImplCopyWith(_$ChangePinCodeInitialImpl value,
          $Res Function(_$ChangePinCodeInitialImpl) then) =
      __$$ChangePinCodeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePinCodeInitialImplCopyWithImpl<$Res>
    extends _$ChangePinCodeStateCopyWithImpl<$Res, _$ChangePinCodeInitialImpl>
    implements _$$ChangePinCodeInitialImplCopyWith<$Res> {
  __$$ChangePinCodeInitialImplCopyWithImpl(_$ChangePinCodeInitialImpl _value,
      $Res Function(_$ChangePinCodeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChangePinCodeInitialImpl extends _ChangePinCodeInitial {
  const _$ChangePinCodeInitialImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$ChangePinCodeInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePinCodeInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChangePinCodeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinCodeInitialImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, int length) enterPin,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, int length)? enterPin,
    TResult? Function(String? error, bool confirm, int length)? createPin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, int length)? enterPin,
    TResult Function(String? error, bool confirm, int length)? createPin,
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
    required TResult Function(_ChangePinCodeInitial value) initial,
    required TResult Function(_ChangePinCodeSuccess value) success,
    required TResult Function(_ChangePinCodeEnterPin value) enterPin,
    required TResult Function(_ChangePinCodeCreatePin value) createPin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePinCodeInitial value)? initial,
    TResult? Function(_ChangePinCodeSuccess value)? success,
    TResult? Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult? Function(_ChangePinCodeCreatePin value)? createPin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePinCodeInitial value)? initial,
    TResult Function(_ChangePinCodeSuccess value)? success,
    TResult Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult Function(_ChangePinCodeCreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePinCodeInitialImplToJson(
      this,
    );
  }
}

abstract class _ChangePinCodeInitial extends ChangePinCodeState {
  const factory _ChangePinCodeInitial() = _$ChangePinCodeInitialImpl;
  const _ChangePinCodeInitial._() : super._();

  factory _ChangePinCodeInitial.fromJson(Map<String, dynamic> json) =
      _$ChangePinCodeInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$ChangePinCodeSuccessImplCopyWith<$Res> {
  factory _$$ChangePinCodeSuccessImplCopyWith(_$ChangePinCodeSuccessImpl value,
          $Res Function(_$ChangePinCodeSuccessImpl) then) =
      __$$ChangePinCodeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePinCodeSuccessImplCopyWithImpl<$Res>
    extends _$ChangePinCodeStateCopyWithImpl<$Res, _$ChangePinCodeSuccessImpl>
    implements _$$ChangePinCodeSuccessImplCopyWith<$Res> {
  __$$ChangePinCodeSuccessImplCopyWithImpl(_$ChangePinCodeSuccessImpl _value,
      $Res Function(_$ChangePinCodeSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChangePinCodeSuccessImpl extends _ChangePinCodeSuccess {
  const _$ChangePinCodeSuccessImpl({final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$ChangePinCodeSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePinCodeSuccessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChangePinCodeState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinCodeSuccessImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, int length) enterPin,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, int length)? enterPin,
    TResult? Function(String? error, bool confirm, int length)? createPin,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, int length)? enterPin,
    TResult Function(String? error, bool confirm, int length)? createPin,
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
    required TResult Function(_ChangePinCodeInitial value) initial,
    required TResult Function(_ChangePinCodeSuccess value) success,
    required TResult Function(_ChangePinCodeEnterPin value) enterPin,
    required TResult Function(_ChangePinCodeCreatePin value) createPin,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePinCodeInitial value)? initial,
    TResult? Function(_ChangePinCodeSuccess value)? success,
    TResult? Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult? Function(_ChangePinCodeCreatePin value)? createPin,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePinCodeInitial value)? initial,
    TResult Function(_ChangePinCodeSuccess value)? success,
    TResult Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult Function(_ChangePinCodeCreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePinCodeSuccessImplToJson(
      this,
    );
  }
}

abstract class _ChangePinCodeSuccess extends ChangePinCodeState {
  const factory _ChangePinCodeSuccess() = _$ChangePinCodeSuccessImpl;
  const _ChangePinCodeSuccess._() : super._();

  factory _ChangePinCodeSuccess.fromJson(Map<String, dynamic> json) =
      _$ChangePinCodeSuccessImpl.fromJson;
}

/// @nodoc
abstract class _$$ChangePinCodeEnterPinImplCopyWith<$Res> {
  factory _$$ChangePinCodeEnterPinImplCopyWith(
          _$ChangePinCodeEnterPinImpl value,
          $Res Function(_$ChangePinCodeEnterPinImpl) then) =
      __$$ChangePinCodeEnterPinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error, int length});
}

/// @nodoc
class __$$ChangePinCodeEnterPinImplCopyWithImpl<$Res>
    extends _$ChangePinCodeStateCopyWithImpl<$Res, _$ChangePinCodeEnterPinImpl>
    implements _$$ChangePinCodeEnterPinImplCopyWith<$Res> {
  __$$ChangePinCodeEnterPinImplCopyWithImpl(_$ChangePinCodeEnterPinImpl _value,
      $Res Function(_$ChangePinCodeEnterPinImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? length = null,
  }) {
    return _then(_$ChangePinCodeEnterPinImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePinCodeEnterPinImpl extends _ChangePinCodeEnterPin {
  const _$ChangePinCodeEnterPinImpl(
      {this.error, this.length = 4, final String? $type})
      : $type = $type ?? 'enterPin',
        super._();

  factory _$ChangePinCodeEnterPinImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePinCodeEnterPinImplFromJson(json);

  @override
  final String? error;
  @override
  @JsonKey()
  final int length;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChangePinCodeState.enterPin(error: $error, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinCodeEnterPinImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, length);

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePinCodeEnterPinImplCopyWith<_$ChangePinCodeEnterPinImpl>
      get copyWith => __$$ChangePinCodeEnterPinImplCopyWithImpl<
          _$ChangePinCodeEnterPinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, int length) enterPin,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
  }) {
    return enterPin(error, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, int length)? enterPin,
    TResult? Function(String? error, bool confirm, int length)? createPin,
  }) {
    return enterPin?.call(error, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, int length)? enterPin,
    TResult Function(String? error, bool confirm, int length)? createPin,
    required TResult orElse(),
  }) {
    if (enterPin != null) {
      return enterPin(error, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePinCodeInitial value) initial,
    required TResult Function(_ChangePinCodeSuccess value) success,
    required TResult Function(_ChangePinCodeEnterPin value) enterPin,
    required TResult Function(_ChangePinCodeCreatePin value) createPin,
  }) {
    return enterPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePinCodeInitial value)? initial,
    TResult? Function(_ChangePinCodeSuccess value)? success,
    TResult? Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult? Function(_ChangePinCodeCreatePin value)? createPin,
  }) {
    return enterPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePinCodeInitial value)? initial,
    TResult Function(_ChangePinCodeSuccess value)? success,
    TResult Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult Function(_ChangePinCodeCreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (enterPin != null) {
      return enterPin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePinCodeEnterPinImplToJson(
      this,
    );
  }
}

abstract class _ChangePinCodeEnterPin extends ChangePinCodeState {
  const factory _ChangePinCodeEnterPin(
      {final String? error, final int length}) = _$ChangePinCodeEnterPinImpl;
  const _ChangePinCodeEnterPin._() : super._();

  factory _ChangePinCodeEnterPin.fromJson(Map<String, dynamic> json) =
      _$ChangePinCodeEnterPinImpl.fromJson;

  String? get error;
  int get length;

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePinCodeEnterPinImplCopyWith<_$ChangePinCodeEnterPinImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePinCodeCreatePinImplCopyWith<$Res> {
  factory _$$ChangePinCodeCreatePinImplCopyWith(
          _$ChangePinCodeCreatePinImpl value,
          $Res Function(_$ChangePinCodeCreatePinImpl) then) =
      __$$ChangePinCodeCreatePinImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error, bool confirm, int length});
}

/// @nodoc
class __$$ChangePinCodeCreatePinImplCopyWithImpl<$Res>
    extends _$ChangePinCodeStateCopyWithImpl<$Res, _$ChangePinCodeCreatePinImpl>
    implements _$$ChangePinCodeCreatePinImplCopyWith<$Res> {
  __$$ChangePinCodeCreatePinImplCopyWithImpl(
      _$ChangePinCodeCreatePinImpl _value,
      $Res Function(_$ChangePinCodeCreatePinImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? confirm = null,
    Object? length = null,
  }) {
    return _then(_$ChangePinCodeCreatePinImpl(
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
class _$ChangePinCodeCreatePinImpl extends _ChangePinCodeCreatePin {
  const _$ChangePinCodeCreatePinImpl(
      {this.error, this.confirm = false, this.length = 4, final String? $type})
      : $type = $type ?? 'createPin',
        super._();

  factory _$ChangePinCodeCreatePinImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePinCodeCreatePinImplFromJson(json);

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
    return 'ChangePinCodeState.createPin(error: $error, confirm: $confirm, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinCodeCreatePinImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.confirm, confirm) || other.confirm == confirm) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, confirm, length);

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePinCodeCreatePinImplCopyWith<_$ChangePinCodeCreatePinImpl>
      get copyWith => __$$ChangePinCodeCreatePinImplCopyWithImpl<
          _$ChangePinCodeCreatePinImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function(String? error, int length) enterPin,
    required TResult Function(String? error, bool confirm, int length)
        createPin,
  }) {
    return createPin(error, confirm, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function(String? error, int length)? enterPin,
    TResult? Function(String? error, bool confirm, int length)? createPin,
  }) {
    return createPin?.call(error, confirm, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function(String? error, int length)? enterPin,
    TResult Function(String? error, bool confirm, int length)? createPin,
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
    required TResult Function(_ChangePinCodeInitial value) initial,
    required TResult Function(_ChangePinCodeSuccess value) success,
    required TResult Function(_ChangePinCodeEnterPin value) enterPin,
    required TResult Function(_ChangePinCodeCreatePin value) createPin,
  }) {
    return createPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePinCodeInitial value)? initial,
    TResult? Function(_ChangePinCodeSuccess value)? success,
    TResult? Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult? Function(_ChangePinCodeCreatePin value)? createPin,
  }) {
    return createPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePinCodeInitial value)? initial,
    TResult Function(_ChangePinCodeSuccess value)? success,
    TResult Function(_ChangePinCodeEnterPin value)? enterPin,
    TResult Function(_ChangePinCodeCreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePinCodeCreatePinImplToJson(
      this,
    );
  }
}

abstract class _ChangePinCodeCreatePin extends ChangePinCodeState {
  const factory _ChangePinCodeCreatePin(
      {final String? error,
      final bool confirm,
      final int length}) = _$ChangePinCodeCreatePinImpl;
  const _ChangePinCodeCreatePin._() : super._();

  factory _ChangePinCodeCreatePin.fromJson(Map<String, dynamic> json) =
      _$ChangePinCodeCreatePinImpl.fromJson;

  String? get error;
  bool get confirm;
  int get length;

  /// Create a copy of ChangePinCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePinCodeCreatePinImplCopyWith<_$ChangePinCodeCreatePinImpl>
      get copyWith => throw _privateConstructorUsedError;
}
