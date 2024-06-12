import 'package:clinic_admin/domain/entities/doctor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctors_entity.dart';

part 'get_doctors_by_category_entity.freezed.dart';
part 'get_doctors_by_category_entity.g.dart';


@freezed
class User with _$User {
  factory User({
    Specialization? specialization,
    Department? department,
    String? id,
    String? email,
    String? userName,
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? gender,
    String? phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class GetDoctorsByCategoryEntity with _$GetDoctorsByCategoryEntity {
  factory GetDoctorsByCategoryEntity({
    List<User>? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _GetDoctorsByCategoryEntity;

  factory GetDoctorsByCategoryEntity.fromJson(Map<String, dynamic> json) => _$GetDoctorsByCategoryEntityFromJson(json);
}
