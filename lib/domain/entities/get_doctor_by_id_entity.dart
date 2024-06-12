import 'package:clinic_admin/domain/entities/doctor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctors_entity.dart';

part 'get_doctor_by_id_entity.freezed.dart';
part 'get_doctor_by_id_entity.g.dart';

@freezed
class GetDoctorByIdEntity with _$GetDoctorByIdEntity {
  const factory GetDoctorByIdEntity({
    Doctor? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _GetDoctorByIdEntity;

  factory GetDoctorByIdEntity.fromJson(Map<String, dynamic> json) =>
      _$GetDoctorByIdEntityFromJson(json);
}


