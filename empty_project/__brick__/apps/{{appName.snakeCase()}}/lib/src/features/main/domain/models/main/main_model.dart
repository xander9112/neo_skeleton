import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_model.freezed.dart';
part 'main_model.g.dart';

@freezed
abstract class MainModel with _$MainModel {
  const factory MainModel({
    required String title,    
  }) = _MainModel;

  factory MainModel.fromJson(Object? json) =>
      _$MainModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
