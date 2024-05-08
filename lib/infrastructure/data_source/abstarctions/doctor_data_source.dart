import '../../../domain/entities/doctor_entity.dart';

abstract class DoctorDataSource {
  Future<Map<String, dynamic>> getAllDoctors();
  Future<Map<String, dynamic>> getDoctorById({required String doctorId});
  Future<Map<String, dynamic>> addDoctor({
    required Doctor doctorData,
    required int specializationId,
    required String password,
  });
}
