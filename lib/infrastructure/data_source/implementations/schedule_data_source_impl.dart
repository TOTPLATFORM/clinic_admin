import 'package:clinic_admin/core/utils/shared_keys.dart';
import 'package:dio/dio.dart';

import '../../../core/dependency_injection/di_container.dart';
import '../../../core/dio/base_dio.dart';
import '../abstractions/schedule_data_source.dart';

class ScheduleDataSourceImpl implements ScheduleDataSource {
  final BaseDio _dioClient;

  String? token = preferences.getString(SharedKeys.accessToken);
  ScheduleDataSourceImpl({required BaseDio dioClient}) : _dioClient = dioClient;

  @override
  Future<Map<String, dynamic>> getAllByDoctorId(
      {required String doctorId}) async {
    final response = await _dioClient.get(
      "/Schedule/doctorId/$doctorId",
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );
    return response.data;
  }
}
