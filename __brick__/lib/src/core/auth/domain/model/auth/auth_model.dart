import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String token,
    required AuthenticatedUser user,
  }) = _AuthModel;

  factory AuthModel.fromJson(Object? json) =>
      _$AuthModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
