part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
    const factory ScheduleEvent.getSchedulesByDoctorId({required String doctorId}) =
      _GetSchedulesByDoctorId;
}