import '../../../core/dependency_injection/di_container.dart';
import '../../../core/dio/base_dio.dart';
import '../../../core/utils/shared_keys.dart';
import '../abstractions/schedule_data_source.dart';

class ScheduleDataSourceImpl implements ScheduleDataSource {
  final BaseDio _dioClient;

  String? token = preferences.getString(SharedKeys.accessToken);
  ScheduleDataSourceImpl({required BaseDio dioClient}) : _dioClient = dioClient;

  @override 
  Future<Map<String, dynamic>> getAllByDoctorId(
      {required String doctorId}) async {
    final response =
        await _dioClient.get("/Schedule/doctor/weeklySchedule/$doctorId");
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> getSchedulesByDay(
      {required int dayOfWeek, required String doctorId}) async {
    final response = await _dioClient
        .get("/Schedule/available/doctor/$doctorId/day/$dayOfWeek");

    return response.data;
  }
}
