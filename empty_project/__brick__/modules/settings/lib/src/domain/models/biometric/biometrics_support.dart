import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings/src/_src.dart';

part 'biometrics_support.freezed.dart';
part 'biometrics_support.g.dart';

@freezed
abstract class BiometricSupportModel with _$BiometricSupportModel {
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
