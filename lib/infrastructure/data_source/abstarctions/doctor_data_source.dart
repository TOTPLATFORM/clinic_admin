import '../../../domain/entities/doctor_entity.dart';

abstract class DoctorDataSource {
  Future<Map<String, dynamic>> getAllDoctors();
  Future<Map<String, dynamic>> getDoctorById({required String doctorId});
  //TODO: add required Data
  Future<Map<String, dynamic>> addDoctor({required DoctorEntity doctorData});
}
