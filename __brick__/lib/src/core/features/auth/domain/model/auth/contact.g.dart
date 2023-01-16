// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactModel _$$_ContactModelFromJson(Map<String, dynamic> json) =>
    _$_ContactModel(
      type: $enumDecode(_$ContactTypeEnumMap, json['type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'type': _$ContactTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$ContactTypeEnumMap = {
  ContactType.teams: 'teams',
  ContactType.email: 'email',
  ContactType.selfPhone: 'self_phone',
  ContactType.workPhone: 'work_phone',
  ContactType.telegram: 'telegram',
  ContactType.whatsapp: 'whatsapp',
  ContactType.skype: 'skype',
  ContactType.instagram: 'instagram',
  ContactType.vk: 'vk',
};
