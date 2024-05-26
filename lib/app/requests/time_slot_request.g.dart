// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotRequestImpl _$$TimeSlotRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeSlotRequestImpl(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      day: json['day'] as String,
    );

Map<String, dynamic> _$$TimeSlotRequestImplToJson(
        _$TimeSlotRequestImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'day': instance.day,
    };
