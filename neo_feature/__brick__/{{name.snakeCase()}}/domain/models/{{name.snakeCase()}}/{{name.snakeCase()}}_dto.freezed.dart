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

{{name.pascalCase()}}DTO _${{name.pascalCase()}}DTOFromJson(Map<String, dynamic> json) {
  return _{{name.pascalCase()}}DTO.fromJson(json);
}

/// @nodoc
mixin _${{name.pascalCase()}}DTO {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  ${{name.pascalCase()}}DTOCopyWith<{{name.pascalCase()}}DTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class ${{name.pascalCase()}}DTOCopyWith<$Res> {
  factory ${{name.pascalCase()}}DTOCopyWith(
          {{name.pascalCase()}}DTO value, $Res Function({{name.pascalCase()}}DTO) then) =
      _${{name.pascalCase()}}DTOCopyWithImpl<$Res, {{name.pascalCase()}}DTO>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _${{name.pascalCase()}}DTOCopyWithImpl<$Res, $Val extends {{name.pascalCase()}}DTO>
    implements ${{name.pascalCase()}}DTOCopyWith<$Res> {
  _${{name.pascalCase()}}DTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_{{name.pascalCase()}}DTOCopyWith<$Res>
    implements ${{name.pascalCase()}}DTOCopyWith<$Res> {
  factory _$$_{{name.pascalCase()}}DTOCopyWith(
          _$_{{name.pascalCase()}}DTO value, $Res Function(_$_{{name.pascalCase()}}DTO) then) =
      __$$_{{name.pascalCase()}}DTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_{{name.pascalCase()}}DTOCopyWithImpl<$Res>
    extends _${{name.pascalCase()}}DTOCopyWithImpl<$Res, _$_{{name.pascalCase()}}DTO>
    implements _$$_{{name.pascalCase()}}DTOCopyWith<$Res> {
  __$$_{{name.pascalCase()}}DTOCopyWithImpl(
      _$_{{name.pascalCase()}}DTO _value, $Res Function(_$_{{name.pascalCase()}}DTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_{{name.pascalCase()}}DTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_{{name.pascalCase()}}DTO implements _{{name.pascalCase()}}DTO {
  const _$_{{name.pascalCase()}}DTO({required this.title});

  factory _$_{{name.pascalCase()}}DTO.fromJson(Map<String, dynamic> json) =>
      _$$_{{name.pascalCase()}}DTOFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return '{{name.pascalCase()}}DTO(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_{{name.pascalCase()}}DTO &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_{{name.pascalCase()}}DTOCopyWith<_$_{{name.pascalCase()}}DTO> get copyWith =>
      __$$_{{name.pascalCase()}}DTOCopyWithImpl<_$_{{name.pascalCase()}}DTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_{{name.pascalCase()}}DTOToJson(
      this,
    );
  }
}

abstract class _{{name.pascalCase()}}DTO implements {{name.pascalCase()}}DTO {
  const factory _{{name.pascalCase()}}DTO({required final String title}) = _$_{{name.pascalCase()}}DTO;

  factory _{{name.pascalCase()}}DTO.fromJson(Map<String, dynamic> json) =
      _$_{{name.pascalCase()}}DTO.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_{{name.pascalCase()}}DTOCopyWith<_$_{{name.pascalCase()}}DTO> get copyWith =>
      throw _privateConstructorUsedError;
}
