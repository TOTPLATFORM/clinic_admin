abstract class SearchDataSource {
  Future<Map<String, dynamic>> searchDoctorByText({
    required String query,
  });
}
