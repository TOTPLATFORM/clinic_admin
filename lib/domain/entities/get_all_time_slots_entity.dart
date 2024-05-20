import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_time_slots_entity.freezed.dart';
part 'get_all_time_slots_entity.g.dart';

@freezed
class TimeSlot with _$TimeSlot {
  factory TimeSlot({
    int? id,
    String? startTime,
    String? endTime,
    String? day,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) => _$TimeSlotFromJson(json);
}

@freezed
class GetTimeSlotsEntity with _$GetTimeSlotsEntity {
  factory GetTimeSlotsEntity({
    List<TimeSlot>? value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _GetTimeSlotsEntity;

  factory GetTimeSlotsEntity.fromJson(Map<String, dynamic> json) => _$GetTimeSlotsEntityFromJson(json);
}
