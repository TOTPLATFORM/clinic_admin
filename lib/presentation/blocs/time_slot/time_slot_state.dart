part of 'time_slot_bloc.dart';

@unfreezed
class TimeSlotState with _$TimeSlotState {
  factory TimeSlotState.initial() = _Initial;
  factory TimeSlotState.loading() = _Loading;
  factory TimeSlotState.failure({required String message}) = _Failure;
  factory TimeSlotState.success({
    List<TimeSlot>? slots,
    @Default(false) bool deleted,
    String? errorMessage,
  }) = _Success;
}
