// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

enum ContactType {
  @JsonValue('teams')
  teams,
  @JsonValue('email')
  email,
  @JsonValue('self_phone')
  selfPhone,
  @JsonValue('work_phone')
  workPhone,
  @JsonValue('telegram')
  telegram,
  @JsonValue('whatsapp')
  whatsapp,
  @JsonValue('skype')
  skype,
  @JsonValue('instagram')
  instagram,
  @JsonValue('vk')
  vk,
}

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
    required ContactType type,
    required String value,
  }) = _ContactModel;

  factory ContactModel.fromJson(Object? json) =>
      _$ContactModelFromJson(json! as Map<String, dynamic>);

  const ContactModel._();

  @override
  Map<String, dynamic> toJson();

  String get modifiedValue {
    // if (type == ContactType.selfPhone) {
    //   return '+7 $value';
    // }

    return value;
  }
}
