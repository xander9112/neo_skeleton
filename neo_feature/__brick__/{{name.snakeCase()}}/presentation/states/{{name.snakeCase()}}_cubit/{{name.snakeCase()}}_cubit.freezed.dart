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
  {{name.pascalCase()}}DTO? get {{name.camelCase()}} => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}})
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}})?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}})?
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
  $Res call({FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}}});

  ${{name.pascalCase()}}DTOCopyWith<$Res>? get {{name.camelCase()}};
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
              as {{name.pascalCase()}}DTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  ${{name.pascalCase()}}DTOCopyWith<$Res>? get {{name.camelCase()}} {
    if (_value.{{name.camelCase()}} == null) {
      return null;
    }

    return ${{name.pascalCase()}}DTOCopyWith<$Res>(_value.{{name.camelCase()}}!, (value) {
      return _then(_value.copyWith({{name.camelCase()}}: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_{{name.pascalCase()}}InitialStateCopyWith<$Res>
    implements ${{name.pascalCase()}}StateCopyWith<$Res> {
  factory _$$_{{name.pascalCase()}}InitialStateCopyWith(_$_{{name.pascalCase()}}InitialState value,
          $Res Function(_$_{{name.pascalCase()}}InitialState) then) =
      __$$_{{name.pascalCase()}}InitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}}});

  @override
  ${{name.pascalCase()}}DTOCopyWith<$Res>? get {{name.camelCase()}};
}

/// @nodoc
class __$$_{{name.pascalCase()}}InitialStateCopyWithImpl<$Res>
    extends _${{name.pascalCase()}}StateCopyWithImpl<$Res, _$_{{name.pascalCase()}}InitialState>
    implements _$$_{{name.pascalCase()}}InitialStateCopyWith<$Res> {
  __$$_{{name.pascalCase()}}InitialStateCopyWithImpl(_$_{{name.pascalCase()}}InitialState _value,
      $Res Function(_$_{{name.pascalCase()}}InitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? {{name.camelCase()}} = freezed,
  }) {
    return _then(_$_{{name.pascalCase()}}InitialState(
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
              as {{name.pascalCase()}}DTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_{{name.pascalCase()}}InitialState extends _{{name.pascalCase()}}InitialState {
  const _$_{{name.pascalCase()}}InitialState(
      {this.status = FetchStatus.pure, this.error, this.{{name.camelCase()}}})
      : super._();

  factory _$_{{name.pascalCase()}}InitialState.fromJson(Map<String, dynamic> json) =>
      _$$_{{name.pascalCase()}}InitialStateFromJson(json);

  @override
  @JsonKey()
  final FetchStatus status;
  @override
  final String? error;
  @override
  final {{name.pascalCase()}}DTO? {{name.camelCase()}};

  @override
  String toString() {
    return '{{name.pascalCase()}}State.initial(status: $status, error: $error, {{name.camelCase()}}: ${{name.camelCase()}})';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_{{name.pascalCase()}}InitialState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.{{name.camelCase()}}, {{name.camelCase()}}) || other.{{name.camelCase()}} == {{name.camelCase()}}));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, {{name.camelCase()}});

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_{{name.pascalCase()}}InitialStateCopyWith<_$_{{name.pascalCase()}}InitialState> get copyWith =>
      __$$_{{name.pascalCase()}}InitialStateCopyWithImpl<_$_{{name.pascalCase()}}InitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}})
        initial,
  }) {
    return initial(status, error, {{name.camelCase()}});
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}})?
        initial,
  }) {
    return initial?.call(status, error, {{name.camelCase()}});
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchStatus status, String? error, {{name.pascalCase()}}DTO? {{name.camelCase()}})?
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
    return _$$_{{name.pascalCase()}}InitialStateToJson(
      this,
    );
  }
}

abstract class _{{name.pascalCase()}}InitialState extends {{name.pascalCase()}}State {
  const factory _{{name.pascalCase()}}InitialState(
      {final FetchStatus status,
      final String? error,
      final {{name.pascalCase()}}DTO? {{name.camelCase()}}}) = _$_{{name.pascalCase()}}InitialState;
  const _{{name.pascalCase()}}InitialState._() : super._();

  factory _{{name.pascalCase()}}InitialState.fromJson(Map<String, dynamic> json) =
      _$_{{name.pascalCase()}}InitialState.fromJson;

  @override
  FetchStatus get status;
  @override
  String? get error;
  @override
  {{name.pascalCase()}}DTO? get {{name.camelCase()}};
  @override
  @JsonKey(ignore: true)
  _$$_{{name.pascalCase()}}InitialStateCopyWith<_$_{{name.pascalCase()}}InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
