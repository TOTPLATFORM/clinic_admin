import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
class Appointment with _$Appointment {
  factory Appointment({
    int? id,
    String? startTime,
    String? endTime,
    String? date,
    String? patientName,
    String? patientId,
    String? doctorName,
    String? doctorId,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
}
