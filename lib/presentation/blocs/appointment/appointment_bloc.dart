import 'package:bloc/bloc.dart';
import '../../../app/contracts/appointment.dart';
import '../../../app/core/primitives/inputs/add_appointment_input.dart';
import '../../../app/core/primitives/inputs/no_params.dart';
import '../../../domain/entities/appointment_entity.dart';
import '../../../domain/entities/get_appointment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_bloc.freezed.dart';
part 'appointment_event.dart';
part 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final GetAppointmentQuery getAppointmentQuery;
  final AddAppointmentCommand addAppointmentCommand;
  final UpdateAppointmentCommand updateAppointmentCommand;
  final DeletAppointmentCommand deleteAppointmentCommand;
  AppointmentBloc({
    required this.addAppointmentCommand,
    required this.getAppointmentQuery,
    required this.updateAppointmentCommand,
    required this.deleteAppointmentCommand,
  }) : super(const AppointmentState.initial()) {
    on<AppointmentEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () {},
        updateAppointment: (value) async {
          final res = await updateAppointmentCommand.call(AddAppointmentInput(
              date: value.data,
              doctorId: value.doctorId,
              patientId: value.patientId,
              startTime: value.startTime,
              endTime: value.endTime,
              appointmentId: value.appointmentId));
          await res.fold(
            (l) async {
              emit(AppointmentState.failure(
                message: l.message,
              ));
            },
            (r) {
              if (r.isSuccess == true) {
                emit(const AppointmentState.success(updated: true));
              }
            },
          );
        },
        deleteAppointment: (value) async {
          final res = await deleteAppointmentCommand.call(value.appointmentId);
          res.fold((l) {
            emit(AppointmentState.failure(
              message: l.message,
            ));
          }, (r) {
            if (r.isSuccess == true) {
              emit(
                const AppointmentState.success(deleted: true),
              );
            }
          });
        },
        getAppointment: (value) async {
          final result = await getAppointmentQuery.call(NoParams());
          result.fold(
            (l) {
              emit(
                AppointmentState.failure(
                  message: l.message,
                ),
              );
            },
            (r) {
              if (r.isSuccess == true) {
                emit(AppointmentState.success(
                  getAppointmentsData: r,
                ));
              } else {
                emit(AppointmentState.failure(
                  message: r.errors?[0] ?? "",
                ));
              }
            },
          );
        },
        addAppointment: (value) async {
          final res = await addAppointmentCommand.call(AddAppointmentInput(
            date: value.data,
            startTime: value.startTime,
            endTime: value.endTime,
            patientId: value.patientId,
            doctorId: value.doctorId,
          ));
          await res.fold(
            (l) async {
              emit(AppointmentState.failure(message: l.message));
            },
            (r) async {
              if (r.isSuccess == true) {
                emit(
                  AppointmentState.success(
                    appointmentData: r,
                  ),
                );
              }
            },
          );
        },
      );
    });
  }
}
