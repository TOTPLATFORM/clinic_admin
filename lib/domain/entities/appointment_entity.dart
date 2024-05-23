import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_entity.freezed.dart';
part 'appointment_entity.g.dart';

@freezed
class AppointmentEntity with _$AppointmentEntity {
  factory AppointmentEntity({
    Appointment? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _AppointmentEntity;

  factory AppointmentEntity.fromJson(Map<String, dynamic> json) => _$AppointmentEntityFromJson(json);
}

@freezed
class Appointment with _$Appointment {
  factory Appointment({
    int? id,
    String? startTime,
    String? endTime,
    String? day,
    String? patientName,
    String? patientId,
    String? doctorName,
    String? doctorId,
    int? scheduleId,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
}
