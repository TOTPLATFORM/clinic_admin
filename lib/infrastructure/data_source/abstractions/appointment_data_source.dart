abstract class AppointmentDataSource {
  Future<Map<String, dynamic>> deleteAppointment(
      {required String appointmentId});

  Future<Map<String, dynamic>> getAppointments();
  Future<Map<String, dynamic>> addAppointmentForDoctor({
    required String patientId,
    required int scheduleId,
  });
}
