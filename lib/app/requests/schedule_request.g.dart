// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleRequestImpl _$$ScheduleRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleRequestImpl(
      agentId: json['agentId'] as String,
      timeSlotId: (json['timeSlotId'] as num).toInt(),
    );

Map<String, dynamic> _$$ScheduleRequestImplToJson(
        _$ScheduleRequestImpl instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'timeSlotId': instance.timeSlotId,
    };
