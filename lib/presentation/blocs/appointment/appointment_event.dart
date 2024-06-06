part of 'appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
   const factory AppointmentEvent.addAppointment(
      {required AppointmentInputs inputs}) = _AddAppointment;

  const factory AppointmentEvent.deleteAppointment({required String id}) =
      _DeleteAppointment;

  const factory AppointmentEvent.getAppointment() = _GetAppointment;
}
