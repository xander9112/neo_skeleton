// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    required int id,
    String? title,
  }) = _HomeModel;

  factory HomeModel.fromJson(Object? json) =>
      _$HomeModelFromJson(json! as Map<String, dynamic>);

  const HomeModel._();

  @override
  Map<String, dynamic> toJson();
}
