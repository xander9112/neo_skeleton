// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginInitialState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  FetchStatus get status => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Duration get blockTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchStatus status, StateStatus stateStatus,
            String? error, Duration blockTime)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchStatus status, StateStatus stateStatus,
            String? error, Duration blockTime)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchStatus status, StateStatus stateStatus, String? error,
            Duration blockTime)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this LoginState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {FetchStatus status,
      StateStatus stateStatus,
      String? error,
      Duration blockTime});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stateStatus = null,
    Object? error = freezed,
    Object? blockTime = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginInitialStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginInitialStateImplCopyWith(_$LoginInitialStateImpl value,
          $Res Function(_$LoginInitialStateImpl) then) =
      __$$LoginInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FetchStatus status,
      StateStatus stateStatus,
      String? error,
      Duration blockTime});
}

/// @nodoc
class __$$LoginInitialStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialStateImpl>
    implements _$$LoginInitialStateImplCopyWith<$Res> {
  __$$LoginInitialStateImplCopyWithImpl(_$LoginInitialStateImpl _value,
      $Res Function(_$LoginInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? stateStatus = null,
    Object? error = freezed,
    Object? blockTime = null,
  }) {
    return _then(_$LoginInitialStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginInitialStateImpl extends _LoginInitialState {
  const _$LoginInitialStateImpl(
      {this.status = FetchStatus.pure,
      this.stateStatus = StateStatus.notReady,
      this.error,
      this.blockTime = Duration.zero})
      : super._();

  factory _$LoginInitialStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginInitialStateImplFromJson(json);

  @override
  @JsonKey()
  final FetchStatus status;
  @override
  @JsonKey()
  final StateStatus stateStatus;
  @override
  final String? error;
  @override
  @JsonKey()
  final Duration blockTime;

  @override
  String toString() {
    return 'LoginState.initial(status: $status, stateStatus: $stateStatus, error: $error, blockTime: $blockTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInitialStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, stateStatus, error, blockTime);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInitialStateImplCopyWith<_$LoginInitialStateImpl> get copyWith =>
      __$$LoginInitialStateImplCopyWithImpl<_$LoginInitialStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchStatus status, StateStatus stateStatus,
            String? error, Duration blockTime)
        initial,
  }) {
    return initial(status, stateStatus, error, blockTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchStatus status, StateStatus stateStatus,
            String? error, Duration blockTime)?
        initial,
  }) {
    return initial?.call(status, stateStatus, error, blockTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchStatus status, StateStatus stateStatus, String? error,
            Duration blockTime)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, stateStatus, error, blockTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginInitialStateImplToJson(
      this,
    );
  }
}

abstract class _LoginInitialState extends LoginState {
  const factory _LoginInitialState(
      {final FetchStatus status,
      final StateStatus stateStatus,
      final String? error,
      final Duration blockTime}) = _$LoginInitialStateImpl;
  const _LoginInitialState._() : super._();

  factory _LoginInitialState.fromJson(Map<String, dynamic> json) =
      _$LoginInitialStateImpl.fromJson;

  @override
  FetchStatus get status;
  @override
  StateStatus get stateStatus;
  @override
  String? get error;
  @override
  Duration get blockTime;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginInitialStateImplCopyWith<_$LoginInitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
