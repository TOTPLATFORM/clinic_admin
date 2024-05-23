import 'package:freezed_annotation/freezed_annotation.dart';

import 'appointment_entity.dart';

part 'get_appointment_entity.freezed.dart';
part 'get_appointment_entity.g.dart';

@freezed
class GetAppointmentsEntity with _$GetAppointmentsEntity {
  factory GetAppointmentsEntity({
    List<Appointment>? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _GetAppointmentsEntity;

  factory GetAppointmentsEntity.fromJson(Map<String, dynamic> json) => _$GetAppointmentsEntityFromJson(json);
}


