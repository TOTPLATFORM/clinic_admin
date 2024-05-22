
import 'package:freezed_annotation/freezed_annotation.dart';

import 'get_all_time_slots_entity.dart';

part 'schedule_entity.freezed.dart';
part 'schedule_entity.g.dart';
@freezed
class DoctorTimeSlot with _$DoctorTimeSlot {
  factory DoctorTimeSlot({
    int? id,
    String? doctorId,
    TimeSlot? timeSlot,
  }) = _DoctorTimeSlot;

  factory DoctorTimeSlot.fromJson(Map<String, dynamic> json) => _$DoctorTimeSlotFromJson(json);
}

@freezed
class ScheduleEntity with _$ScheduleEntity {
  factory ScheduleEntity({
    List<DoctorTimeSlot>? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _ScheduleEntity;

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) => _$ScheduleEntityFromJson(json);
}