import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/contracts/doctor.dart';
import '../../../app/core/primitives/inputs/no_params.dart';
import '../../../domain/entities/doctor_entity.dart';
import '../../../domain/entities/doctors_entity.dart';

part 'doctor_bloc.freezed.dart';
part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final GetDoctorsQuery getDoctorQuery;
  final GetDoctorByIdQuery getDoctorByIdQuery;
  DoctorBloc({required this.getDoctorQuery, required this.getDoctorByIdQuery})
      : super(const DoctorState.initial()) {
    on<DoctorEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () {},
        getDoctorById: (value) async {
          final result = await getDoctorByIdQuery.call(value.id);
          await result.fold(
            (l) async {
              emit(DoctorState.failure(message: l.message));
            },
            (r) async {
              if (r.isSuccess == true) {
                state.maybeMap(
                    orElse: () {},
                    success: (value) => emit(value.copyWith(doctor: r)));
              } else {
                emit(DoctorState.failure(message: r.errors?[0] ?? ""));
              }
            },
          );
        },
        getAllDoctors: (value) async {
          emit(const DoctorState.loading());
          final result = await getDoctorQuery.call(NoParams());
          result.fold(
            (l) {
              emit(DoctorState.failure(message: l.message));
            },
            (r) {
              if (r.isSuccess == true) {
                emit(DoctorState.success(doctors: r));
              } else {
                emit(DoctorState.failure(message: r.errors?[0] ?? ""));
              }
            },
          );
        },
      );
    });
  }
}
