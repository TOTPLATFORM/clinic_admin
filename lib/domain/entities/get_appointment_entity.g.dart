// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_appointment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAppointmentsEntityImpl _$$GetAppointmentsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAppointmentsEntityImpl(
      value: (json['value'] as List<dynamic>?)
          ?.map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$$GetAppointmentsEntityImplToJson(
        _$GetAppointmentsEntityImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
      'validationErrors': instance.validationErrors,
    };
