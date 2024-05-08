import 'package:freezed_annotation/freezed_annotation.dart';

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
class Doctor with _$Doctor {
  const factory Doctor({
    String? id,
    String? doctorEmail,
    String? doctorFirstName,
    String? doctorLastName,
    String? doctorPhoneNumber,
    String? userName,
    Specialization? specialization,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
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
