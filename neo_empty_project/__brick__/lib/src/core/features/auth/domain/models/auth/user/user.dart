// ignore_for_file: invalid_annotation_target

import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    required String login,
    @JsonKey(name: 'last_name')
        required String lastName,
    @JsonKey(name: 'first_name')
        required String firstName,
    String? patronymic,
    @JsonKey(name: 'firebase_id')
        String? firebaseId,
    @JsonKey(
      name: 'birthday',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? birthday,
    @JsonKey(
      name: 'created_at',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? createdAt,
    @JsonKey(
      name: 'updated_at',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Object? json) =>
      _$UserModelFromJson(json! as Map<String, dynamic>);

  const UserModel._();

  @override
  Map<String, dynamic> toJson();

  String get fullName => '$lastName $firstName';

  String get shortName {
    var shortName = '$lastName ${firstName[0]}.';

    if (patronymic != null) {
      shortName += '${patronymic![0]}.';
    }

    return shortName;
  }

  String? get birthdayFormatted {
    if (birthday == null) {
      return null;
    }

    return DateFormat.MMMMd().format(birthday!);
  }

  String? get birthdayFormattedForProfile {
    if (birthday == null) {
      return null;
    }

    return DateFormat.yMMMMd().format(birthday!);
  }
}
