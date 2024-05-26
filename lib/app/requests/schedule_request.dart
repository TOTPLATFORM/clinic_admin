import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_request.freezed.dart';
part 'schedule_request.g.dart';

@freezed
class ScheduleRequest with _$ScheduleRequest {
  const factory ScheduleRequest({
    required String agentId,
    required int timeSlotId,
  }) = _ScheduleRequest;

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleRequestFromJson(json);
}
