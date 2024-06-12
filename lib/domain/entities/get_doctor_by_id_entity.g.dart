// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_doctor_by_id_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDoctorByIdEntityImpl _$$GetDoctorByIdEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDoctorByIdEntityImpl(
      value: json['value'] == null
          ? null
          : Doctor.fromJson(json['value'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      isSuccess: json['isSuccess'] as bool?,
      successMessage: json['successMessage'] as String?,
      correlationId: json['correlationId'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      validationErrors: (json['validationErrors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GetDoctorByIdEntityImplToJson(
        _$GetDoctorByIdEntityImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
      'validationErrors': instance.validationErrors,
    };
