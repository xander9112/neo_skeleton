// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchStatus status, String? error) unAuth,
    required TResult Function(String? token, FetchStatus status, String? error)
        unVerified,
    required TResult Function(String? token) verified,
    required TResult Function(bool redirect) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(AuthStateUnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchStatus status, String? error) unAuth,
    required TResult Function(String? token, FetchStatus status, String? error)
        unVerified,
    required TResult Function(String? token) verified,
    required TResult Function(bool redirect) logout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(AuthStateUnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UnAuthCopyWith<$Res> {
  factory _$$_UnAuthCopyWith(_$_UnAuth value, $Res Function(_$_UnAuth) then) =
      __$$_UnAuthCopyWithImpl<$Res>;
  $Res call({FetchStatus status, String? error});
}

/// @nodoc
class __$$_UnAuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnAuthCopyWith<$Res> {
  __$$_UnAuthCopyWithImpl(_$_UnAuth _value, $Res Function(_$_UnAuth) _then)
      : super(_value, (v) => _then(v as _$_UnAuth));

  @override
  _$_UnAuth get _value => super._value as _$_UnAuth;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UnAuth(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnAuth implements _UnAuth {
  const _$_UnAuth({this.status = FetchStatus.pure, this.error});

  @override
  @JsonKey()
  final FetchStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.unAuth(status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuth &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_UnAuthCopyWith<_$_UnAuth> get copyWith =>
      __$$_UnAuthCopyWithImpl<_$_UnAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchStatus status, String? error) unAuth,
    required TResult Function(String? token, FetchStatus status, String? error)
        unVerified,
    required TResult Function(String? token) verified,
    required TResult Function(bool redirect) logout,
  }) {
    return unAuth(status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
  }) {
    return unAuth?.call(status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(AuthStateUnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class _UnAuth implements AuthState {
  const factory _UnAuth({final FetchStatus status, final String? error}) =
      _$_UnAuth;

  FetchStatus get status;
  String? get error;
  @JsonKey(ignore: true)
  _$$_UnAuthCopyWith<_$_UnAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateUnVerifiedCopyWith<$Res> {
  factory _$$AuthStateUnVerifiedCopyWith(_$AuthStateUnVerified value,
          $Res Function(_$AuthStateUnVerified) then) =
      __$$AuthStateUnVerifiedCopyWithImpl<$Res>;
  $Res call({String? token, FetchStatus status, String? error});
}

/// @nodoc
class __$$AuthStateUnVerifiedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthStateUnVerifiedCopyWith<$Res> {
  __$$AuthStateUnVerifiedCopyWithImpl(
      _$AuthStateUnVerified _value, $Res Function(_$AuthStateUnVerified) _then)
      : super(_value, (v) => _then(v as _$AuthStateUnVerified));

  @override
  _$AuthStateUnVerified get _value => super._value as _$AuthStateUnVerified;

  @override
  $Res call({
    Object? token = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AuthStateUnVerified(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateUnVerified implements AuthStateUnVerified {
  const _$AuthStateUnVerified(
      {this.token, this.status = FetchStatus.pure, this.error});

  @override
  final String? token;
  @override
  @JsonKey()
  final FetchStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.unVerified(token: $token, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnVerified &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$AuthStateUnVerifiedCopyWith<_$AuthStateUnVerified> get copyWith =>
      __$$AuthStateUnVerifiedCopyWithImpl<_$AuthStateUnVerified>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchStatus status, String? error) unAuth,
    required TResult Function(String? token, FetchStatus status, String? error)
        unVerified,
    required TResult Function(String? token) verified,
    required TResult Function(bool redirect) logout,
  }) {
    return unVerified(token, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
  }) {
    return unVerified?.call(token, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
    required TResult orElse(),
  }) {
    if (unVerified != null) {
      return unVerified(token, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(AuthStateUnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return unVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return unVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (unVerified != null) {
      return unVerified(this);
    }
    return orElse();
  }
}

abstract class AuthStateUnVerified implements AuthState {
  const factory AuthStateUnVerified(
      {final String? token,
      final FetchStatus status,
      final String? error}) = _$AuthStateUnVerified;

  String? get token;
  FetchStatus get status;
  String? get error;
  @JsonKey(ignore: true)
  _$$AuthStateUnVerifiedCopyWith<_$AuthStateUnVerified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, (v) => _then(v as _$_Verified));

  @override
  _$_Verified get _value => super._value as _$_Verified;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_Verified(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Verified implements _Verified {
  const _$_Verified([this.token]);

  @override
  final String? token;

  @override
  String toString() {
    return 'AuthState.verified(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verified &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_VerifiedCopyWith<_$_Verified> get copyWith =>
      __$$_VerifiedCopyWithImpl<_$_Verified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchStatus status, String? error) unAuth,
    required TResult Function(String? token, FetchStatus status, String? error)
        unVerified,
    required TResult Function(String? token) verified,
    required TResult Function(bool redirect) logout,
  }) {
    return verified(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
  }) {
    return verified?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(AuthStateUnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthState {
  const factory _Verified([final String? token]) = _$_Verified;

  String? get token;
  @JsonKey(ignore: true)
  _$$_VerifiedCopyWith<_$_Verified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
  $Res call({bool redirect});
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, (v) => _then(v as _$_Logout));

  @override
  _$_Logout get _value => super._value as _$_Logout;

  @override
  $Res call({
    Object? redirect = freezed,
  }) {
    return _then(_$_Logout(
      redirect == freezed
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout(this.redirect);

  @override
  final bool redirect;

  @override
  String toString() {
    return 'AuthState.logout(redirect: $redirect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logout &&
            const DeepCollectionEquality().equals(other.redirect, redirect));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(redirect));

  @JsonKey(ignore: true)
  @override
  _$$_LogoutCopyWith<_$_Logout> get copyWith =>
      __$$_LogoutCopyWithImpl<_$_Logout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchStatus status, String? error) unAuth,
    required TResult Function(String? token, FetchStatus status, String? error)
        unVerified,
    required TResult Function(String? token) verified,
    required TResult Function(bool redirect) logout,
  }) {
    return logout(redirect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
  }) {
    return logout?.call(redirect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchStatus status, String? error)? unAuth,
    TResult Function(String? token, FetchStatus status, String? error)?
        unVerified,
    TResult Function(String? token)? verified,
    TResult Function(bool redirect)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(redirect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(AuthStateUnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(AuthStateUnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthState {
  const factory _Logout(final bool redirect) = _$_Logout;

  bool get redirect;
  @JsonKey(ignore: true)
  _$$_LogoutCopyWith<_$_Logout> get copyWith =>
      throw _privateConstructorUsedError;
}
