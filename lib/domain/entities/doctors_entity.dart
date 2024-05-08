import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor_entity.dart';

part 'doctors_entity.freezed.dart';
part 'doctors_entity.g.dart';

@freezed
class DoctorsEntity with _$DoctorsEntity {
  factory DoctorsEntity({
    List<Doctor>? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _DoctorsEntity;

  factory DoctorsEntity.fromJson(Map<String, dynamic> json) =>
      _$DoctorsEntityFromJson(json);
}

@freezed
class Specialization with _$Specialization {
  const factory Specialization({
    int? id,
    String? specializationName,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
