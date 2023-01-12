// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSettingsModel _$UserSettingsModelFromJson(Map<String, dynamic> json) {
  return _UserSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$UserSettingsModel {
  bool get news => throw _privateConstructorUsedError;
  bool get board => throw _privateConstructorUsedError;
  bool get birthday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSettingsModelCopyWith<UserSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsModelCopyWith<$Res> {
  factory $UserSettingsModelCopyWith(
          UserSettingsModel value, $Res Function(UserSettingsModel) then) =
      _$UserSettingsModelCopyWithImpl<$Res, UserSettingsModel>;
  @useResult
  $Res call({bool news, bool board, bool birthday});
}

/// @nodoc
class _$UserSettingsModelCopyWithImpl<$Res, $Val extends UserSettingsModel>
    implements $UserSettingsModelCopyWith<$Res> {
  _$UserSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? board = null,
    Object? birthday = null,
  }) {
    return _then(_value.copyWith(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as bool,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as bool,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserSettingsModelCopyWith<$Res>
    implements $UserSettingsModelCopyWith<$Res> {
  factory _$$_UserSettingsModelCopyWith(_$_UserSettingsModel value,
          $Res Function(_$_UserSettingsModel) then) =
      __$$_UserSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool news, bool board, bool birthday});
}

/// @nodoc
class __$$_UserSettingsModelCopyWithImpl<$Res>
    extends _$UserSettingsModelCopyWithImpl<$Res, _$_UserSettingsModel>
    implements _$$_UserSettingsModelCopyWith<$Res> {
  __$$_UserSettingsModelCopyWithImpl(
      _$_UserSettingsModel _value, $Res Function(_$_UserSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? board = null,
    Object? birthday = null,
  }) {
    return _then(_$_UserSettingsModel(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as bool,
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as bool,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSettingsModel extends _UserSettingsModel {
  const _$_UserSettingsModel(
      {this.news = false, this.board = false, this.birthday = false})
      : super._();

  factory _$_UserSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserSettingsModelFromJson(json);

  @override
  @JsonKey()
  final bool news;
  @override
  @JsonKey()
  final bool board;
  @override
  @JsonKey()
  final bool birthday;

  @override
  String toString() {
    return 'UserSettingsModel(news: $news, board: $board, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSettingsModel &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, news, board, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSettingsModelCopyWith<_$_UserSettingsModel> get copyWith =>
      __$$_UserSettingsModelCopyWithImpl<_$_UserSettingsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSettingsModelToJson(
      this,
    );
  }
}

abstract class _UserSettingsModel extends UserSettingsModel {
  const factory _UserSettingsModel(
      {final bool news,
      final bool board,
      final bool birthday}) = _$_UserSettingsModel;
  const _UserSettingsModel._() : super._();

  factory _UserSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_UserSettingsModel.fromJson;

  @override
  bool get news;
  @override
  bool get board;
  @override
  bool get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_UserSettingsModelCopyWith<_$_UserSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
