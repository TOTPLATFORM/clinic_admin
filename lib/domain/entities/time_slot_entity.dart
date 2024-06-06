import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot_entity.freezed.dart';
part 'time_slot_entity.g.dart';

@freezed
class TimeSlotEntity with _$TimeSlotEntity {
  factory TimeSlotEntity({
    dynamic value,
    int? status,
    bool? isSuccess,
    String? successMessage,
    String? correlationId,
    List<String>? errors,
    List<String>? validationErrors,
  }) = _TimeSlotEntity;

  factory TimeSlotEntity.fromJson(Map<String, dynamic> json) => _$TimeSlotEntityFromJson(json);
}
