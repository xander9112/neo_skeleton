import 'package:auth/src/_src.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
abstract class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String token,
    required AuthenticatedUser user,
  }) = _AuthModel;

  factory AuthModel.fromJson(Object? json) =>
      _$AuthModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
