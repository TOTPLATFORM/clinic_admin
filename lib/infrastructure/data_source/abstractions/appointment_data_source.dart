abstract class AppointmentDataSource {
  Future<Map<String, dynamic>> addAppointment({
    required String doctorId,
    required String patientId,
    required int scheduleId,
  });
  Future<Map<String, dynamic>> updateAppointment({
    required String doctorId,
    required String patientId,
    required int scheduleId,
        required String appointmentId,

  });
  Future<Map<String, dynamic>> getAppointment();
  Future<Map<String, dynamic>> deleteAppointment(
      {required String appointmentId});
}
