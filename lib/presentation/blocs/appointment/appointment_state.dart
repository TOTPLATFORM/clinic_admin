part of 'appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.loading() = _Loading;
  const factory AppointmentState.success({
    AppointmentEntity? appointmentData,
    GetAppointmentsEntity? getAppointmentsData,
    @Default(false) bool deleted,
    @Default(false) bool updated,
  }) = _Success;
  const factory AppointmentState.failure({
    required String message,
  }) = _Failure;
}
