import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/contracts/doctor.dart';
import '../../../app/core/primitives/inputs/add_doctor.dart';
import '../../../domain/entities/doctor_entity.dart';

part 'doctor_bloc.freezed.dart';
part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  int index = 0;

  final GetDoctorsQuery _getDoctorQuery;
  final GetDoctorByIdQuery _getDoctorByIdQuery;
  final AddDoctorQuery _addDoctorQuery;
  final DeleteDoctorCommand _deleteDoctorCommand;

  DoctorBloc(
      {required GetDoctorsQuery getDoctorQuery,
      required GetDoctorByIdQuery getDoctorByIdQuery,
      required DeleteDoctorCommand deleteDoctorCommand,
      required AddDoctorQuery addDoctorQuery})
      : _deleteDoctorCommand = deleteDoctorCommand,
        _addDoctorQuery = addDoctorQuery,
        _getDoctorByIdQuery = getDoctorByIdQuery,
        _getDoctorQuery = getDoctorQuery,
        super(const DoctorState.initial()) {
    on<DoctorEvent>(
      (event, emit) async {
        await event.maybeMap(
          orElse: () {},
          addDoctor: (value) async {
            emit(const DoctorState.loading());
            final res = await _addDoctorQuery.call(AddDoctorInputs(
              password: value.doctorData.password,
              specializationId: value.doctorData.specializationId,
              firstName: value.doctorData.firstName,
              lastName: value.doctorData.lastName,
              username: value.doctorData.username,
              email: value.doctorData.email,
              phone: value.doctorData.phone,
            ));
            res.fold((l) async => emit(DoctorState.failure(message: l.message)),
                (r) async {
              if (r.isSuccess == true) {
                state.maybeMap(
                  orElse: () {},
                  success: (value) async {
                    emit(value.copyWith(
                      doctor: r,
                      addDoctor: true,
                    ));
                    add(const DoctorEvent.getAllDoctors());
                  },
                );
              } else {
                emit(DoctorState.failure(message: r.errors?[0] ?? ""));
              }
            });
          },
          deleteDoctor: (event) async {
            // final result = await _deleteDoctorCommand.call(event.id);
            // await result
            //     .fold((l) async => emit(DoctorState.failure(message: l.message)),
            //         (r) async {
            //   if (r.isSuccess == true) {
            //     state.maybeMap(
            //       orElse: () {},
            //       success: (value) async {
            //         // final doctors = [...value.doctors!.value!];
            //                     final List<Doctor> doctors = List<Doctor>.from([value.doctors!.value!]);

            //         doctors.removeWhere((v) => v.id == event.id);

            //         emit(value.copyWith(
            //             doctors: value.doctors!.copyWith(value: doctors),
            //             deleteDoctor: true));
            //         add(const DoctorEvent.getAllDoctors());
            //       },
            //     );
            //   } else {
            //     emit(DoctorState.failure(message: r.errors?[0] ?? ""));
            //   }
            // });
          },
          getDoctorById: (value) async {
            state.maybeMap(
              orElse: () {},
              success: (s) => emit(
                s.copyWith(isLoading: true),
              ),
            );
            final result = await _getDoctorByIdQuery.call(value.id);
            await result.fold(
              (l) async => emit(DoctorState.failure(message: l.message)),
              (r) async {
                if (r.isSuccess == true) {
                  await Future.delayed(const Duration(seconds: 1));

                  state.maybeMap(
                      orElse: () {},
                      success: (value) =>
                          emit(value.copyWith(doctor: r, isLoading: false)));
                } else {
                  emit(DoctorState.failure(message: r.errors?[0] ?? ""));
                }
              },
            );
          },
          getAllDoctors: (value) async {
            final result = await getDoctorQuery.call(index);
            final List<Doctor>? oldDoctors = state.maybeMap(
              orElse: () => [],
              success: (value) => value.doctors,
            );
            await result.fold(
              (l) async {
                emit(
                  DoctorState.failure(
                    message: l.message,
                  ),
                );
              },
              (r) async {
                if (r.isSuccess == true) {
                  if (oldDoctors != null) {
                    final List<Doctor> newData = r.value?.data ?? [];
                    final newDoctors = [...oldDoctors, ...newData];
                    emit(DoctorState.success(
                        doctors: newDoctors,
                        hasNextPage: r.value?.hasNextPage));
                  }
                  index = r.value?.end ?? 0;
                } else {
                  emit(
                    DoctorState.failure(message: r.errors?[0] ?? ""),
                  );
                }
              },
            );
          },
        );
      },
      transformer: droppable(),
    );
  }
}
