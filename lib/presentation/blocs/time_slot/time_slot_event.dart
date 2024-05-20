part of 'time_slot_bloc.dart';

@freezed
class TimeSlotEvent with _$TimeSlotEvent {
  const factory TimeSlotEvent.getAllTimeSlots() = _GetAllTimeSlots;
  const factory TimeSlotEvent.addTimeSlot(TimeSlotRequest timeSlot) =
      _AddTimeSlot;
}