import 'package:bloc/bloc.dart';
import 'package:clinic_admin/app/core/primitives/inputs/schedule_inputs.dart';
import '../../../app/contracts/schedule_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_entity.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetDoctorScheduleQuery _getSchedulesByDoctorId;
  final GetSchedulesByDayQuery _getSchedulesByDoctorIdDay;
  ScheduleBloc(
      {required GetSchedulesByDayQuery getSchedulesByDoctorIdDay,
      required GetDoctorScheduleQuery getSchedulesByDoctorId})
      : _getSchedulesByDoctorIdDay = getSchedulesByDoctorIdDay,
        _getSchedulesByDoctorId = getSchedulesByDoctorId,
        super(const ScheduleState.loading()) {
    on<_GetSchedulesByDoctorId>((event, emit) async {
      await event.maybeMap(
          orElse: () {},
          getSchedulesByDoctorId: (value) async {
            emit(const ScheduleState.loading());
            final res = await _getSchedulesByDoctorId(value.doctorId);
            await res.fold((l) async => emit(ScheduleState.error(l.message)),
                (r) async => emit(ScheduleState.success(schedules: r)));
          });
    });
    on<_GetSchedulesByDay>((event, emit) async {
      await event.maybeMap(
          orElse: () {},
          getSchedulesByDay: (value) async {
            final res = await _getSchedulesByDoctorIdDay(ScheduleInputs(
                doctorId: value.doctorId, dayOfWeek: value.dayOfWeek));
            await res.fold((l) async => emit(ScheduleState.error(l.message)),
                (r) async => state.mapOrNull(success: (success) => emit(success.copyWith(schedulesByDay: r))));
          });
    });
  }
}
