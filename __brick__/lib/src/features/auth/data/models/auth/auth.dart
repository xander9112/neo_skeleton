// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required int id,
    String? title,
  }) = _AuthModel;

  factory AuthModel.fromJson(Object? json) =>
      _$AuthModelFromJson(json! as Map<String, dynamic>);

  const AuthModel._();

  @override
  Map<String, dynamic> toJson();
}
