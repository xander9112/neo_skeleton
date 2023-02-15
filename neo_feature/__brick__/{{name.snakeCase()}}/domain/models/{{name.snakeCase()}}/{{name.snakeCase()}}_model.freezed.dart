// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '{{name.snakeCase()}}_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

{{name.pascalCase()}}Model _${{name.pascalCase()}}ModelFromJson(Map<String, dynamic> json) {
  return _{{name.pascalCase()}}Model.fromJson(json);
}

/// @nodoc
mixin _${{name.pascalCase()}}Model {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  ${{name.pascalCase()}}ModelCopyWith<{{name.pascalCase()}}Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class ${{name.pascalCase()}}ModelCopyWith<$Res> {
  factory ${{name.pascalCase()}}ModelCopyWith(
          {{name.pascalCase()}}Model value, $Res Function({{name.pascalCase()}}Model) then) =
      _${{name.pascalCase()}}ModelCopyWithImpl<$Res, {{name.pascalCase()}}Model>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _${{name.pascalCase()}}ModelCopyWithImpl<$Res, $Val extends {{name.pascalCase()}}Model>
    implements ${{name.pascalCase()}}ModelCopyWith<$Res> {
  _${{name.pascalCase()}}ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_{{name.pascalCase()}}ModelCopyWith<$Res>
    implements ${{name.pascalCase()}}ModelCopyWith<$Res> {
  factory _$$_{{name.pascalCase()}}ModelCopyWith(
          _$_{{name.pascalCase()}}Model value, $Res Function(_$_{{name.pascalCase()}}Model) then) =
      __$$_{{name.pascalCase()}}ModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_{{name.pascalCase()}}ModelCopyWithImpl<$Res>
    extends _${{name.pascalCase()}}ModelCopyWithImpl<$Res, _$_{{name.pascalCase()}}Model>
    implements _$$_{{name.pascalCase()}}ModelCopyWith<$Res> {
  __$$_{{name.pascalCase()}}ModelCopyWithImpl(
      _$_{{name.pascalCase()}}Model _value, $Res Function(_$_{{name.pascalCase()}}Model) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_{{name.pascalCase()}}Model(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_{{name.pascalCase()}}Model implements _{{name.pascalCase()}}Model {
  const _$_{{name.pascalCase()}}Model({required this.title});

  factory _$_{{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _$$_{{name.pascalCase()}}ModelFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return '{{name.pascalCase()}}Model(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_{{name.pascalCase()}}Model &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_{{name.pascalCase()}}ModelCopyWith<_$_{{name.pascalCase()}}Model> get copyWith =>
      __$$_{{name.pascalCase()}}ModelCopyWithImpl<_$_{{name.pascalCase()}}Model>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_{{name.pascalCase()}}ModelToJson(
      this,
    );
  }
}

abstract class _{{name.pascalCase()}}Model implements {{name.pascalCase()}}Model {
  const factory _{{name.pascalCase()}}Model({required final String title}) = _$_{{name.pascalCase()}}Model;

  factory _{{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =
      _$_{{name.pascalCase()}}Model.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_{{name.pascalCase()}}ModelCopyWith<_$_{{name.pascalCase()}}Model> get copyWith =>
      throw _privateConstructorUsedError;
}
