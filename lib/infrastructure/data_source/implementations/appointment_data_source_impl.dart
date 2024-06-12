import '../../../core/dio/base_dio.dart';
import '../abstractions/appointment_data_source.dart';

class AppointmentDataSourceImpl implements AppointmentDataSource {
  final BaseDio _dioClient;

  AppointmentDataSourceImpl({required BaseDio dioClient})
      : _dioClient = dioClient;
  @override
  Future<Map<String, dynamic>> addAppointmentForDoctor({
    required String patientId,
    required int scheduleId,
  }) async {
    try {
      final resposnse = await _dioClient.post("/Appointment", data: {
        "patientId": patientId,
        "scheduleId": scheduleId,
        "description": "N/A"
      });

      return resposnse.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> deleteAppointment(
      {required String appointmentId}) async {
    try {
      final resposnse =
          await _dioClient.post("/Appointment/cancel/$appointmentId");
      return resposnse.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getAppointments() async {
    try {
      final resposnse = await _dioClient.get("/Appointment");
      return resposnse.data;
    } catch (e) {
      rethrow;
    }
  }
}
