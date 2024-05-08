abstract class AppointmentDataSource {
  Future<Map<String, dynamic>> addAppointment({
    required String doctorId,
    required String patientId,
    required String date,
    required String startTime,
    required String endTime,
    
  });
  Future<Map<String, dynamic>> updateAppointment({
    required String doctorId,
    required String patientId,
    required String date,
    required String startTime,
    required String endTime,
    required String appointmentId,
    
  });
  Future<Map<String, dynamic>> getAppointment();
  Future<Map<String, dynamic>> deleteAppointment({
    required String appointmentId
  });
}
