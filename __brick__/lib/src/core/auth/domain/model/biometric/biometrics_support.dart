import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'biometrics_support.freezed.dart';
part 'biometrics_support.g.dart';

@freezed
class BiometricSupportModel with _$BiometricSupportModel {
  const factory BiometricSupportModel({
    @Default(BiometricStatus.notAvailable) BiometricStatus status,
    BiometricTypeModel? type,
    bool? useBiometric,
  }) = _BiometricSupportModel;

  factory BiometricSupportModel.fromJson(Object? json) =>
      _$BiometricSupportModelFromJson(json! as Map<String, dynamic>);

  const BiometricSupportModel._();

  @override
  Map<String, dynamic> toJson();

  bool get isFace => type == BiometricTypeModel.face;

  bool get isFingerprint => type == BiometricTypeModel.fingerprint;
}
