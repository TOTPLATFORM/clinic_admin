import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../app/contracts/appointment.dart';
import '../../../app/core/primitives/inputs/appointment_data.dart';
import '../../../app/core/primitives/inputs/no_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/appointment_entity.dart';

part 'appointment_bloc.freezed.dart';
part 'appointment_event.dart';
part 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AddAppointmentCommand _addAppointmentCommand;
  final DeleteAppointmentCommand _deleteAppointmentCommand;
  final GetAppointmentQuery _getAppointmentQuery;
  AppointmentBloc(
      {required AddAppointmentCommand addAppointmentCommand,
      required DeleteAppointmentCommand deleteAppointmentCommand,
      required GetAppointmentQuery getAppointmentQuery})
      : _getAppointmentQuery = getAppointmentQuery,
        _deleteAppointmentCommand = deleteAppointmentCommand,
        _addAppointmentCommand = addAppointmentCommand,
        super(const _Loading()) {
    on<_AddAppointment>(_addAppointmentHandler);
    on<_DeleteAppointment>(_deleteAppointmentHandler);
    on<_GetAppointment>(_getAppointmentHandler);
  }

  FutureOr<void> _addAppointmentHandler(
      _AddAppointment event, Emitter<AppointmentState> emit) async {
    final result = await _addAppointmentCommand.call(event.inputs);
    result.fold(
        (l) => emit(_Failed(message: l.message)),
        (r) => state.mapOrNull(
            success: (success) => emit(success.copyWith(isAdded: true))));
  }

  FutureOr<void> _deleteAppointmentHandler(
      _DeleteAppointment event, Emitter<AppointmentState> emit) async {
    final result = await _deleteAppointmentCommand.call(event.id);
    result.fold(
        (l) => emit(_Failed(message: l.message)),
        (r) => state.mapOrNull(
            success: (success) => emit(success.copyWith(isDeleted: true))));
  }

  FutureOr<void> _getAppointmentHandler(
      _GetAppointment event, Emitter<AppointmentState> emit) async {
    final result = await _getAppointmentQuery.call(NoParams());
    result.fold(
        (l) => emit(_Failed(message: l.message)),
        (r) => emit(
            _Success(appointments: r, isAdded: false, isDeleted: false)));
  }
}
