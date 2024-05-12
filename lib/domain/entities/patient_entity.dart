import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_entity.freezed.dart';
part 'patient_entity.g.dart';

@freezed
abstract class PatientEntity with _$PatientEntity {
  factory PatientEntity({
    List<Patient>? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<dynamic>? errors,
    List<dynamic>? validationErrors,
  }) = _PatientEntity;

  factory PatientEntity.fromJson(Map<String, dynamic> json) =>
      _$PatientEntityFromJson(json);
}

@freezed
abstract class Patient with _$Patient {
  factory Patient({
    String? id,
    String? patientFirstName,
    String? patientLastName,
    String? patientEmail,
    String? patientPhoneNumber,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
