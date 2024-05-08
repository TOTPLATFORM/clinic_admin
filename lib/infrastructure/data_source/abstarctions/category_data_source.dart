abstract class CategoryDataSource {
  Future<Map<String, dynamic>> getAllCategory();
  Future<Map<String, dynamic>> getDoctorsBySpecialty(
      {required String specialtyId});
}
