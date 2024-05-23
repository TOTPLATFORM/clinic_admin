abstract class ScheduleDataSource {

  Future<Map<String, dynamic>> getAllByDoctorId({
    required String doctorId,
  });
}
