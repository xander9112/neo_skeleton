import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    required String title,    
  }) = _HomeModel;

  factory HomeModel.fromJson(Object? json) =>
      _$HomeModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
