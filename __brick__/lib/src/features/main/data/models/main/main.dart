// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class MainModel with _$MainModel {
  const factory MainModel({
    required int id,
    String? title,
  }) = _MainModel;

  factory MainModel.fromJson(Object? json) =>
      _$MainModelFromJson(json! as Map<String, dynamic>);

  const MainModel._();

  @override
  Map<String, dynamic> toJson();
}
