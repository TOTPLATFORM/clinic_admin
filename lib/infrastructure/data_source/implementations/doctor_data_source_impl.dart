import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../core/dependency_injection/di_container.dart';
import '../../../core/dio/base_dio.dart';
import '../../../core/utils/shared_keys.dart';
import '../../../domain/entities/doctor_entity.dart';
import '../abstractions/doctor_data_source.dart';

class DoctorDataSourceImpl implements DoctorDataSource {
  final BaseDio dioClient;

  DoctorDataSourceImpl({required this.dioClient});

  @override
  Future<Map<String, dynamic>> getAllDoctors() async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    log("message: token: $token");
    try {
      final res = await dioClient.get(
        "/Doctor",
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

  @override
  Future<Map<String, dynamic>> getDoctorById({required String doctorId}) async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    log("message: token: $token");
    try {
      final res = await dioClient.get(
        "/Doctor/$doctorId",
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

  @override
  Future<Map<String, dynamic>> addDoctor(
      {required Doctor doctorData,
      required int specializationId,
      required String password}) async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    log("message: token: $token");
    try {
      final res = await dioClient.post("/Doctor",
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            },
          ),
          data: {
            "doctorEmail": doctorData.doctorEmail,
            "doctorFirstName": doctorData.doctorFirstName,
            "doctorLastName": doctorData.doctorLastName,
            "doctorPhoneNumber": doctorData.doctorPhoneNumber,
            "password": password,
            "userName": doctorData.userName,
            "specializationId": specializationId
          });
      return res.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> deleteDoctor({required String doctorId}) async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    log("message: token: $token");
    try {
      final res = await dioClient.delete(
        "/Doctor/?id=$doctorId",
        options: Options(
          headers: {
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
