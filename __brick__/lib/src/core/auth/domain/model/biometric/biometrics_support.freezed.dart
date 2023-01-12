// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometrics_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BiometricSupportModel _$BiometricSupportModelFromJson(
    Map<String, dynamic> json) {
  return _BiometricSupportModel.fromJson(json);
}

/// @nodoc
mixin _$BiometricSupportModel {
  BiometricStatus get status => throw _privateConstructorUsedError;
  BiometricType? get type => throw _privateConstructorUsedError;
  bool? get useBiometric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiometricSupportModelCopyWith<BiometricSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricSupportModelCopyWith<$Res> {
  factory $BiometricSupportModelCopyWith(BiometricSupportModel value,
          $Res Function(BiometricSupportModel) then) =
      _$BiometricSupportModelCopyWithImpl<$Res, BiometricSupportModel>;
  @useResult
  $Res call({BiometricStatus status, BiometricType? type, bool? useBiometric});
}

/// @nodoc
class _$BiometricSupportModelCopyWithImpl<$Res,
        $Val extends BiometricSupportModel>
    implements $BiometricSupportModelCopyWith<$Res> {
  _$BiometricSupportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = freezed,
    Object? useBiometric = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BiometricType?,
      useBiometric: freezed == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BiometricSupportModelCopyWith<$Res>
    implements $BiometricSupportModelCopyWith<$Res> {
  factory _$$_BiometricSupportModelCopyWith(_$_BiometricSupportModel value,
          $Res Function(_$_BiometricSupportModel) then) =
      __$$_BiometricSupportModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BiometricStatus status, BiometricType? type, bool? useBiometric});
}

/// @nodoc
class __$$_BiometricSupportModelCopyWithImpl<$Res>
    extends _$BiometricSupportModelCopyWithImpl<$Res, _$_BiometricSupportModel>
    implements _$$_BiometricSupportModelCopyWith<$Res> {
  __$$_BiometricSupportModelCopyWithImpl(_$_BiometricSupportModel _value,
      $Res Function(_$_BiometricSupportModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = freezed,
    Object? useBiometric = freezed,
  }) {
    return _then(_$_BiometricSupportModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BiometricType?,
      useBiometric: freezed == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BiometricSupportModel extends _BiometricSupportModel {
  const _$_BiometricSupportModel(
      {this.status = BiometricStatus.notAvailable,
      this.type,
      this.useBiometric})
      : super._();

  factory _$_BiometricSupportModel.fromJson(Map<String, dynamic> json) =>
      _$$_BiometricSupportModelFromJson(json);

  @override
  @JsonKey()
  final BiometricStatus status;
  @override
  final BiometricType? type;
  @override
  final bool? useBiometric;

  @override
  String toString() {
    return 'BiometricSupportModel(status: $status, type: $type, useBiometric: $useBiometric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BiometricSupportModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.useBiometric, useBiometric) ||
                other.useBiometric == useBiometric));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, type, useBiometric);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BiometricSupportModelCopyWith<_$_BiometricSupportModel> get copyWith =>
      __$$_BiometricSupportModelCopyWithImpl<_$_BiometricSupportModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BiometricSupportModelToJson(
      this,
    );
  }
}

abstract class _BiometricSupportModel extends BiometricSupportModel {
  const factory _BiometricSupportModel(
      {final BiometricStatus status,
      final BiometricType? type,
      final bool? useBiometric}) = _$_BiometricSupportModel;
  const _BiometricSupportModel._() : super._();

  factory _BiometricSupportModel.fromJson(Map<String, dynamic> json) =
      _$_BiometricSupportModel.fromJson;

  @override
  BiometricStatus get status;
  @override
  BiometricType? get type;
  @override
  bool? get useBiometric;
  @override
  @JsonKey(ignore: true)
  _$$_BiometricSupportModelCopyWith<_$_BiometricSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}
