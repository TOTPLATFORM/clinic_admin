part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.addAppointment({
      required int scheduleId,
      
      required String patientId,
      required String doctorId,
    }) = _AddAppointment;
  const factory AppointmentEvent.updateAppointment({
      required int scheduleId,
      
      required String patientId,
      required String doctorId,
      required String appointmentId,
    }) = _UpdateAppointment;
  const factory AppointmentEvent.getAppointment() = _GetAppointment;
  const factory AppointmentEvent.deleteAppointment({
      required String appointmentId,
  }) = _DeleteAppointment;
}