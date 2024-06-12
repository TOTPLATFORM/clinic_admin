part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.getSchedulesByDoctorId(
      {required String doctorId}) = _GetSchedulesByDoctorId;
  const factory ScheduleEvent.getSchedulesByDay({
    required String doctorId,
    required int dayOfWeek,
  }) = _GetSchedulesByDay;
}
