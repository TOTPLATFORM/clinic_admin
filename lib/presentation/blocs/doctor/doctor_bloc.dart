import 'package:bloc/bloc.dart';
import 'package:clinic_admin/app/core/primitives/inputs/add_doctor.dart';
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
  final AddDoctorQuery addDoctorQuery;

  DoctorBloc(
      {required this.getDoctorQuery,
      required this.getDoctorByIdQuery,
      required this.addDoctorQuery})
      : super(const DoctorState.initial()) {
    on<DoctorEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () {},
        addDoctor: (value) async {
          final res = await addDoctorQuery.call(AddDoctorInputs(
            password: value.doctorData.password,
            specializationId: value.doctorData.specializationId,
            firstName: value.doctorData.firstName,
            lastName: value.doctorData.lastName,
            username: value.doctorData.username,
            email: value.doctorData.email,
            phone: value.doctorData.phone,
          ));
          res.fold(
            (l) {
              emit(DoctorState.failure(message: l.message));
            },
            (r) {
              if (r.isSuccess == true) {
                state.maybeMap(
                  orElse: () {},
                  success: (value) {
                    emit(
                      value.copyWith(doctor: r,
                      addDoctor: true
                      ),
                    );
                    add(const DoctorEvent.getAllDoctors());
                  },
                );
              } else {
                emit(DoctorState.failure(message: r.errors?[0] ?? ""));
              }
            },
          );
        },
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
