part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.loading() = _Loading;
  const factory ScheduleState.success(
      {required List<ScheduleEntity> schedules,
      List<ScheduleEntity>? schedulesByDay}) = _Success;
  const factory ScheduleState.error(String message) = _Error;
}
