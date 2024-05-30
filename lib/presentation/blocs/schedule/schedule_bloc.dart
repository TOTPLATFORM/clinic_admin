import 'package:bloc/bloc.dart';
import '../../../app/contracts/schedule_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/schedule_entity.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetDoctorScheduleQuery getSchedulesByDoctorId;
  ScheduleBloc({required this.getSchedulesByDoctorId})
      : super(const ScheduleState.initial()) {
    on<ScheduleEvent>((event, emit) async {
      await event.maybeMap(
          orElse: () {},
          getSchedulesByDoctorId: (value) async {
            emit(const ScheduleState.loading());
            final res = await getSchedulesByDoctorId(value.doctorId);
            res.fold((l) async {
              emit(ScheduleState.error(l.message));
            }, (r) async {
              emit(ScheduleState.success(schedules: r));
            });
          });
    });
  }
}
