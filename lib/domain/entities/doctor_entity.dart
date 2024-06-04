import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_entity.freezed.dart';
part 'doctor_entity.g.dart';

@freezed
class DoctorEntity with _$DoctorEntity {
  factory DoctorEntity({
    Doctor? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _DoctorEntity;

  factory DoctorEntity.fromJson(Map<String, dynamic> json) =>
      _$DoctorEntityFromJson(json);
}

@freezed
class Doctor with _$Doctor {
  factory Doctor({
    String? id,
    String? doctorEmail,
    String? doctorFirstName,
    String? doctorLastName,
    String? doctorPhoneNumber,
    String? userName,
    String? dateOfBirth,
    String? gender,
    Department? department,
    Specialization? specialization,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@freezed
class Department with _$Department {
  const factory Department({
    int? id,
    String? departmentName,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

@freezed
class Specialization with _$Specialization {
  factory Specialization({
    int? id,
    String? specializationName,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
