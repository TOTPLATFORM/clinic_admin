// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorTimeSlotImpl _$$DoctorTimeSlotImplFromJson(Map<String, dynamic> json) =>
    _$DoctorTimeSlotImpl(
      id: (json['id'] as num?)?.toInt(),
      doctorId: json['doctorId'] as String?,
      timeSlot: json['timeSlot'] == null
          ? null
          : TimeSlot.fromJson(json['timeSlot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorTimeSlotImplToJson(
        _$DoctorTimeSlotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctorId': instance.doctorId,
      'timeSlot': instance.timeSlot,
    };

_$ScheduleEntityImpl _$$ScheduleEntityImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleEntityImpl(
      value: (json['value'] as List<dynamic>?)
          ?.map((e) => DoctorTimeSlot.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ScheduleEntityImplToJson(
        _$ScheduleEntityImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
      'validationErrors': instance.validationErrors,
    };
