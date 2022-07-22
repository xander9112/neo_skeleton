// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    String? title,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Object? json) =>
      _$ProfileModelFromJson(json! as Map<String, dynamic>);

  const ProfileModel._();

  @override
  Map<String, dynamic> toJson();
}
