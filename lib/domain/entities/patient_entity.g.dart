// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientEntityImpl _$$PatientEntityImplFromJson(Map<String, dynamic> json) =>
    _$PatientEntityImpl(
      value: (json['value'] as List<dynamic>?)
          ?.map((e) => PatientEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: (json['status'] as num?)?.toInt(),
      isSuccess: json['isSuccess'] as bool?,
      successMessage: json['successMessage'] as String?,
      correlationId: json['correlationId'] as String?,
      errors: json['errors'] as List<dynamic>?,
      validationErrors: json['validationErrors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PatientEntityImplToJson(_$PatientEntityImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
      'validationErrors': instance.validationErrors,
    };

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String?,
      patientFirstName: json['patientFirstName'] as String?,
      patientLastName: json['patientLastName'] as String?,
      patientEmail: json['patientEmail'] as String?,
      patientPhoneNumber: json['patientPhoneNumber'] as String?,
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientFirstName': instance.patientFirstName,
      'patientLastName': instance.patientLastName,
      'patientEmail': instance.patientEmail,
      'patientPhoneNumber': instance.patientPhoneNumber,
    };
