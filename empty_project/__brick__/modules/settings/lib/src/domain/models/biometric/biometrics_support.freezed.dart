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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiometricSupportModel _$BiometricSupportModelFromJson(
    Map<String, dynamic> json) {
  return _BiometricSupportModel.fromJson(json);
}

/// @nodoc
mixin _$BiometricSupportModel {
  BiometricStatus get status => throw _privateConstructorUsedError;
  BiometricTypeModel? get type => throw _privateConstructorUsedError;
  bool? get useBiometric => throw _privateConstructorUsedError;

  /// Serializes this BiometricSupportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiometricSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiometricSupportModelCopyWith<BiometricSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricSupportModelCopyWith<$Res> {
  factory $BiometricSupportModelCopyWith(BiometricSupportModel value,
          $Res Function(BiometricSupportModel) then) =
      _$BiometricSupportModelCopyWithImpl<$Res, BiometricSupportModel>;
  @useResult
  $Res call(
      {BiometricStatus status, BiometricTypeModel? type, bool? useBiometric});
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

  /// Create a copy of BiometricSupportModel
  /// with the given fields replaced by the non-null parameter values.
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
              as BiometricTypeModel?,
      useBiometric: freezed == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiometricSupportModelImplCopyWith<$Res>
    implements $BiometricSupportModelCopyWith<$Res> {
  factory _$$BiometricSupportModelImplCopyWith(
          _$BiometricSupportModelImpl value,
          $Res Function(_$BiometricSupportModelImpl) then) =
      __$$BiometricSupportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BiometricStatus status, BiometricTypeModel? type, bool? useBiometric});
}

/// @nodoc
class __$$BiometricSupportModelImplCopyWithImpl<$Res>
    extends _$BiometricSupportModelCopyWithImpl<$Res,
        _$BiometricSupportModelImpl>
    implements _$$BiometricSupportModelImplCopyWith<$Res> {
  __$$BiometricSupportModelImplCopyWithImpl(_$BiometricSupportModelImpl _value,
      $Res Function(_$BiometricSupportModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? type = freezed,
    Object? useBiometric = freezed,
  }) {
    return _then(_$BiometricSupportModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BiometricTypeModel?,
      useBiometric: freezed == useBiometric
          ? _value.useBiometric
          : useBiometric // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiometricSupportModelImpl extends _BiometricSupportModel {
  const _$BiometricSupportModelImpl(
      {this.status = BiometricStatus.notAvailable,
      this.type,
      this.useBiometric})
      : super._();

  factory _$BiometricSupportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiometricSupportModelImplFromJson(json);

  @override
  @JsonKey()
  final BiometricStatus status;
  @override
  final BiometricTypeModel? type;
  @override
  final bool? useBiometric;

  @override
  String toString() {
    return 'BiometricSupportModel(status: $status, type: $type, useBiometric: $useBiometric)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricSupportModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.useBiometric, useBiometric) ||
                other.useBiometric == useBiometric));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, type, useBiometric);

  /// Create a copy of BiometricSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricSupportModelImplCopyWith<_$BiometricSupportModelImpl>
      get copyWith => __$$BiometricSupportModelImplCopyWithImpl<
          _$BiometricSupportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiometricSupportModelImplToJson(
      this,
    );
  }
}

abstract class _BiometricSupportModel extends BiometricSupportModel {
  const factory _BiometricSupportModel(
      {final BiometricStatus status,
      final BiometricTypeModel? type,
      final bool? useBiometric}) = _$BiometricSupportModelImpl;
  const _BiometricSupportModel._() : super._();

  factory _BiometricSupportModel.fromJson(Map<String, dynamic> json) =
      _$BiometricSupportModelImpl.fromJson;

  @override
  BiometricStatus get status;
  @override
  BiometricTypeModel? get type;
  @override
  bool? get useBiometric;

  /// Create a copy of BiometricSupportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricSupportModelImplCopyWith<_$BiometricSupportModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
