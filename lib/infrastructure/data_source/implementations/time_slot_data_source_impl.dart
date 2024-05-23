import 'package:clinic_admin/app/requests/time_slot_request.dart';
import 'package:clinic_admin/core/dependency_injection/di_container.dart';
import 'package:dio/dio.dart';

import '../../../core/dio/base_dio.dart';
import '../../../core/utils/shared_keys.dart';
import '../abstractions/time_slot_data_source.dart';

class TimeSlotDataSourceImpl implements TimeSlotDataSource {
  final BaseDio _baseDio;

  TimeSlotDataSourceImpl({required BaseDio baseDio}) : _baseDio = baseDio;

  @override
  Future<Map<String, dynamic>> addTimeSlot(
      {required TimeSlotRequest timeSlot}) async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";

    final response = await _baseDio.post(
      '/TimeSlot',
      data: timeSlot.toJson(),
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );

    return response.data;
  }

  @override
  Future<Map<String, dynamic>> getTimeSlots() async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    final response = await _baseDio.get(
      '/TimeSlot',
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    return response.data;
  }

  @override
  Future<Map<String, dynamic>> deleteTimeSlot(
      {required String timeSlotId}) async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    final response = await _baseDio.delete(
      '/TimeSlot?id=$timeSlotId',
      options: Options(
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );

    return response.data;
  }
}
