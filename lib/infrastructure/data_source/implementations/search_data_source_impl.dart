import 'package:dio/dio.dart';

import '../../../core/dependency_injection/di_container.dart';
import '../../../core/dio/base_dio.dart';
import '../../../core/utils/shared_keys.dart';
import '../abstractions/search_data_source.dart';

class SearchDataSourceImpl implements SearchDataSource {
  final BaseDio dioClient;

  SearchDataSourceImpl({required this.dioClient});
  @override
  Future<Map<String, dynamic>> searchDoctorByText({
    required String query,
  }) async {
    final String token = preferences.getString(SharedKeys.accessToken) ?? "";
    final response = await dioClient.get(
      '/Doctor/search/$query',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );
    return response.data;
  }
}
