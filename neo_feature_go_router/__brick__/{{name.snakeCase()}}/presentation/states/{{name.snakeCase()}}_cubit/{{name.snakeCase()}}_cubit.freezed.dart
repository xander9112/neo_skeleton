// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '{{name.snakeCase()}}_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

{{name.pascalCase()}}State _${{name.pascalCase()}}StateFromJson(Map<String, dynamic> json) {
  return _{{name.pascalCase()}}InitialState.fromJson(json);
}

/// @nodoc
mixin _${{name.pascalCase()}}State {
  FetchStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  {{name.pascalCase()}}Model? get {{name.camelCase()}} => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}})
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}})?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}})?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_{{name.pascalCase()}}InitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_{{name.pascalCase()}}InitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_{{name.pascalCase()}}InitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  ${{name.pascalCase()}}StateCopyWith<{{name.pascalCase()}}State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class ${{name.pascalCase()}}StateCopyWith<$Res> {
  factory ${{name.pascalCase()}}StateCopyWith(
          {{name.pascalCase()}}State value, $Res Function({{name.pascalCase()}}State) then) =
      _${{name.pascalCase()}}StateCopyWithImpl<$Res, {{name.pascalCase()}}State>;
  @useResult
  $Res call({FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}}});

  ${{name.pascalCase()}}ModelCopyWith<$Res>? get {{name.camelCase()}};
}

/// @nodoc
class _${{name.pascalCase()}}StateCopyWithImpl<$Res, $Val extends {{name.pascalCase()}}State>
    implements ${{name.pascalCase()}}StateCopyWith<$Res> {
  _${{name.pascalCase()}}StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? {{name.camelCase()}} = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      {{name.camelCase()}}: freezed == {{name.camelCase()}}
          ? _value.{{name.camelCase()}}
          : {{name.camelCase()}} // ignore: cast_nullable_to_non_nullable
              as {{name.pascalCase()}}Model?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  ${{name.pascalCase()}}ModelCopyWith<$Res>? get {{name.camelCase()}} {
    if (_value.{{name.camelCase()}} == null) {
      return null;
    }

    return ${{name.pascalCase()}}ModelCopyWith<$Res>(_value.{{name.camelCase()}}!, (value) {
      return _then(_value.copyWith({{name.camelCase()}}: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$${{name.pascalCase()}}InitialStateImplCopyWith<$Res>
    implements ${{name.pascalCase()}}StateCopyWith<$Res> {
  factory _$${{name.pascalCase()}}InitialStateImplCopyWith(
          _${{name.pascalCase()}}InitialStateImpl value,
          $Res Function(_${{name.pascalCase()}}InitialStateImpl) then) =
      __$${{name.pascalCase()}}InitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}}});

  @override
  ${{name.pascalCase()}}ModelCopyWith<$Res>? get {{name.camelCase()}};
}

/// @nodoc
class __$${{name.pascalCase()}}InitialStateImplCopyWithImpl<$Res>
    extends _${{name.pascalCase()}}StateCopyWithImpl<$Res, _${{name.pascalCase()}}InitialStateImpl>
    implements _$${{name.pascalCase()}}InitialStateImplCopyWith<$Res> {
  __$${{name.pascalCase()}}InitialStateImplCopyWithImpl(
      _${{name.pascalCase()}}InitialStateImpl _value,
      $Res Function(_${{name.pascalCase()}}InitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? {{name.camelCase()}} = freezed,
  }) {
    return _then(_${{name.pascalCase()}}InitialStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      {{name.camelCase()}}: freezed == {{name.camelCase()}}
          ? _value.{{name.camelCase()}}
          : {{name.camelCase()}} // ignore: cast_nullable_to_non_nullable
              as {{name.pascalCase()}}Model?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _${{name.pascalCase()}}InitialStateImpl extends _{{name.pascalCase()}}InitialState {
  const _${{name.pascalCase()}}InitialStateImpl(
      {this.status = FetchStatus.pure, this.error, this.{{name.camelCase()}}})
      : super._();

  factory _${{name.pascalCase()}}InitialStateImpl.fromJson(Map<String, dynamic> json) =>
      _$${{name.pascalCase()}}InitialStateImplFromJson(json);

  @override
  @JsonKey()
  final FetchStatus status;
  @override
  final String? error;
  @override
  final {{name.pascalCase()}}Model? {{name.camelCase()}};

  @override
  String toString() {
    return '{{name.pascalCase()}}State.initial(status: $status, error: $error, {{name.camelCase()}}: ${{name.camelCase()}})';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _${{name.pascalCase()}}InitialStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.{{name.camelCase()}}, {{name.camelCase()}}) ||
                other.{{name.camelCase()}} == {{name.camelCase()}}));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, {{name.camelCase()}});

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$${{name.pascalCase()}}InitialStateImplCopyWith<_${{name.pascalCase()}}InitialStateImpl>
      get copyWith => __$${{name.pascalCase()}}InitialStateImplCopyWithImpl<
          _${{name.pascalCase()}}InitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}})
        initial,
  }) {
    return initial(status, error, {{name.camelCase()}});
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}})?
        initial,
  }) {
    return initial?.call(status, error, {{name.camelCase()}});
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FetchStatus status, String? error, {{name.pascalCase()}}Model? {{name.camelCase()}})?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, error, {{name.camelCase()}});
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_{{name.pascalCase()}}InitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_{{name.pascalCase()}}InitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_{{name.pascalCase()}}InitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$${{name.pascalCase()}}InitialStateImplToJson(
      this,
    );
  }
}

abstract class _{{name.pascalCase()}}InitialState extends {{name.pascalCase()}}State {
  const factory _{{name.pascalCase()}}InitialState(
      {final FetchStatus status,
      final String? error,
      final {{name.pascalCase()}}Model? {{name.camelCase()}}}) = _${{name.pascalCase()}}InitialStateImpl;
  const _{{name.pascalCase()}}InitialState._() : super._();

  factory _{{name.pascalCase()}}InitialState.fromJson(Map<String, dynamic> json) =
      _${{name.pascalCase()}}InitialStateImpl.fromJson;

  @override
  FetchStatus get status;
  @override
  String? get error;
  @override
  {{name.pascalCase()}}Model? get {{name.camelCase()}};
  @override
  @JsonKey(ignore: true)
  _$${{name.pascalCase()}}InitialStateImplCopyWith<_${{name.pascalCase()}}InitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
