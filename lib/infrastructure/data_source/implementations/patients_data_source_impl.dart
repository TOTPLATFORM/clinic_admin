import '../../../core/dio/base_dio.dart';
import '../abstractions/patients_data_source.dart';

class PatientDataSourceImpl implements PatientDataSource {
  final BaseDio _dioClient;

  PatientDataSourceImpl({required BaseDio dioClient}) : _dioClient = dioClient;

  @override
  Future<Map<String, dynamic>> getAllPatients() async {
    try {
      final res = await _dioClient.get("/Patient");
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
