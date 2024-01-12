import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_model.freezed.dart';
part '{{name.snakeCase()}}_model.g.dart';

@freezed
class {{name.pascalCase()}}DTO with _${{name.pascalCase()}}DTO {
  const factory {{name.pascalCase()}}DTO({
    required String title,    
  }) = _{{name.pascalCase()}}DTO;

  factory {{name.pascalCase()}}DTO.fromJson(Object? json) =>
      _${{name.pascalCase()}}DTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
