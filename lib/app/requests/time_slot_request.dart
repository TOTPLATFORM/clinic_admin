import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot_request.freezed.dart';
part 'time_slot_request.g.dart';

@freezed
class TimeSlotRequest with _$TimeSlotRequest {
  const factory TimeSlotRequest({
    required String startTime,
    required String endTime,
    required String day,
  }) = _TimeSlotRequest;

  factory TimeSlotRequest.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotRequestFromJson(json);
}
