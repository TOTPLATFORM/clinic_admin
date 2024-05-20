part of 'time_slot_bloc.dart';

@freezed
class TimeSlotState with _$TimeSlotState {
  const factory TimeSlotState.initial() = _Initial;
  const factory TimeSlotState.loading() = _Loading;
  const factory TimeSlotState.failure({required String message}) = _Failure;
  const factory TimeSlotState.success({required List<TimeSlot>? slots}) = _Success;
}
