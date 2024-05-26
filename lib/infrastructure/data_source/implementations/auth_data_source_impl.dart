import 'dart:developer';

import '../../../core/dio/base_dio.dart';
import '../abstractions/auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final BaseDio dioClient;

  AuthDataSourceImpl({required this.dioClient});
  @override
  Future<Map<String, dynamic>> login({
    required String username,
    required String password,
  }) async {
    final response = await dioClient.post(
      '/Auth/Login',
      data: {
        'userName': username,
        'password': password,
      },
    );
    log(
      '${response.data}:::::::::login',
    );
    return response.data;
  }

  @override
  @override
  Future<Map<String, dynamic>> register({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    required String phone,
    required String password,
  }) async {
    final response = await dioClient.post(
      "/Auth/RegisterPatient",
      data: {
        'PatientFirstName': firstName,
        'PatientLastName': lastName,
        'userName': username,
        'PatientEmail': email,
        'PatientPhoneNumber': phone,
        'password': password,
      },
    );
    
    return response.data;
  }
}
