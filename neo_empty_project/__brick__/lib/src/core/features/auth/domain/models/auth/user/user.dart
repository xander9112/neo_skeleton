// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'profile_uid') required String id,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'profile_status_id') required int profileStatusId,
    required String email,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'middle_name') String? middleName,
    String? company,
    String? phone,
  }) = _UserModel;

  factory UserModel.fromJson(Object? json) =>
      _$UserModelFromJson(json! as Map<String, dynamic>);

  const UserModel._();

  @override
  Map<String, dynamic> toJson();

  String get fullName => '$lastName $firstName';

  String get shortName {
    final shortName = '$lastName ${firstName[0]}.';

    return shortName;
  }
}
