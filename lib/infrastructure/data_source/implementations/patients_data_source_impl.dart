import 'package:dio/dio.dart';

import '../../../core/dependency_injection/di_container.dart';
import '../../../core/dio/base_dio.dart';
import '../../../core/utils/shared_keys.dart';
import '../abstarctions/patients_data_source.dart';

class PatientDataSourceImpl implements PatientDataSource {
  final BaseDio _dioClient;

  PatientDataSourceImpl({required BaseDio dioClient}) : _dioClient = dioClient;

  @override
  Future<Map<String, dynamic>> getAllPatients() async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    try {
      final res = await _dioClient.get(
        "/Patient",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
