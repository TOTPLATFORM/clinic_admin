abstract class UpdatePersonalDataSource {
  Future<Map<String, dynamic>> updatePersonalData(
      {required String firstName,
      required String lastName,
      required String username,
      required String email,
      required String phone,
      required String password,
      required String patientId});
}
