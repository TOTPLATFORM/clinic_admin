part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = _Initial;
  const factory ScheduleState.loading() = _Loading;
  const factory ScheduleState.success(
    {required ScheduleEntity schedules,}
  ) = _Success;
  const factory ScheduleState.error(String message) = _Error;
}
