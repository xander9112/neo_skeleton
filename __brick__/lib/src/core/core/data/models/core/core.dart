// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'core.freezed.dart';
part 'core.g.dart';

@freezed
class CoreModel with _$CoreModel {
  const factory CoreModel({
    required int id,
    String? title,
  }) = _CoreModel;

  factory CoreModel.fromJson(Object? json) =>
      _$CoreModelFromJson(json! as Map<String, dynamic>);

  const CoreModel._();

  @override
  Map<String, dynamic> toJson();
}
