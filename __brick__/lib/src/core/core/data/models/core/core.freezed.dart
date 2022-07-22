// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoreModel _$CoreModelFromJson(Map<String, dynamic> json) {
  return _CoreModel.fromJson(json);
}

/// @nodoc
mixin _$CoreModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoreModelCopyWith<CoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreModelCopyWith<$Res> {
  factory $CoreModelCopyWith(CoreModel value, $Res Function(CoreModel) then) =
      _$CoreModelCopyWithImpl<$Res>;
  $Res call({int id, String? title});
}

/// @nodoc
class _$CoreModelCopyWithImpl<$Res> implements $CoreModelCopyWith<$Res> {
  _$CoreModelCopyWithImpl(this._value, this._then);

  final CoreModel _value;
  // ignore: unused_field
  final $Res Function(CoreModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoreModelCopyWith<$Res> implements $CoreModelCopyWith<$Res> {
  factory _$$_CoreModelCopyWith(
          _$_CoreModel value, $Res Function(_$_CoreModel) then) =
      __$$_CoreModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? title});
}

/// @nodoc
class __$$_CoreModelCopyWithImpl<$Res> extends _$CoreModelCopyWithImpl<$Res>
    implements _$$_CoreModelCopyWith<$Res> {
  __$$_CoreModelCopyWithImpl(
      _$_CoreModel _value, $Res Function(_$_CoreModel) _then)
      : super(_value, (v) => _then(v as _$_CoreModel));

  @override
  _$_CoreModel get _value => super._value as _$_CoreModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_CoreModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoreModel extends _CoreModel {
  const _$_CoreModel({required this.id, this.title}) : super._();

  factory _$_CoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoreModelFromJson(json);

  @override
  final int id;
  @override
  final String? title;

  @override
  String toString() {
    return 'CoreModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_CoreModelCopyWith<_$_CoreModel> get copyWith =>
      __$$_CoreModelCopyWithImpl<_$_CoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoreModelToJson(
      this,
    );
  }
}

abstract class _CoreModel extends CoreModel {
  const factory _CoreModel({required final int id, final String? title}) =
      _$_CoreModel;
  const _CoreModel._() : super._();

  factory _CoreModel.fromJson(Map<String, dynamic> json) =
      _$_CoreModel.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_CoreModelCopyWith<_$_CoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
