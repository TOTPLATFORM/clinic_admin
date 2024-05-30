import 'package:bloc/bloc.dart';
import '../../../app/contracts/time_slot.dart';
import '../../../app/core/primitives/inputs/no_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/requests/time_slot_request.dart';
import '../../../domain/entities/get_all_time_slots_entity.dart';

part 'time_slot_bloc.freezed.dart';
part 'time_slot_event.dart';
part 'time_slot_state.dart';

class TimeSlotBloc extends Bloc<TimeSlotEvent, TimeSlotState> {
  final AddTimeSlotQuery addTimeSlot;
  final GetTimeSlotsQuery getTimeSlotsQuery;
  final DeleteTimeSlotCommand deleteTimeSlotCommand;
  TimeSlotBloc(
      {required this.addTimeSlot,
      required this.getTimeSlotsQuery,
      required this.deleteTimeSlotCommand})
      : super(TimeSlotState.initial()) {
    on<TimeSlotEvent>(
      (event, emit) async {
        await event.maybeMap(
          orElse: () {},
          deleteTimeSlot: (value) async {
            final result =
                await deleteTimeSlotCommand.call(value.timeSlotId.toString());
            await result.fold(
              (l) async {
                state.maybeMap(
                  orElse: () {
                    add(const TimeSlotEvent.getAllTimeSlots());
                  },
                  success: (successState) {
                    final slots = successState.slots;
                    emit(
                      TimeSlotState.success(
                        slots: slots,
                        errorMessage: l.message,
                        deleted: false,
                      ),
                    );
                  },
                );
              },
              (r) async {
                state.maybeMap(
                  orElse: () {
                    add(const TimeSlotEvent.getAllTimeSlots());
                  },
                  success: (successState) {
                    emit(_Success(slots: successState.slots, deleted: true));

                    add(const TimeSlotEvent.getAllTimeSlots());
                  },
                );
              },
            );
          },
          addTimeSlot: (value) async {
            emit(TimeSlotState.loading());
            final result = await addTimeSlot.call(value.timeSlot);
            await result.fold(
              (l) async {
                emit(TimeSlotState.failure(message: l.message));
              },
              (r) async {
                if (r.isSuccess == true) {
                  Future.delayed(const Duration(seconds: 2));
                  emit(TimeSlotState.success());
                  add(const TimeSlotEvent.getAllTimeSlots());
                } else {
                  emit(TimeSlotState.failure(message: r.errors![0]));
                }
              },
            );
          },
          getAllTimeSlots: (value) async {
            emit(TimeSlotState.loading());
            final result = await getTimeSlotsQuery.call(NoParams());
            await result.fold(
              (l) async {
                emit(TimeSlotState.failure(message: l.message));
              },
              (r) async {
                if (r.isSuccess == true) {
                  emit(TimeSlotState.success(slots: r.value));
                } else {
                  emit(TimeSlotState.failure(message: r.errors![0]));
                }
              },
            );
          },
        );
      },
    );
  }
}
