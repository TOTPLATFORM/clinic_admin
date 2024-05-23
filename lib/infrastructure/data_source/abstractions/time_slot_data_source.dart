import '../../../app/requests/time_slot_request.dart';

abstract class TimeSlotDataSource {
  Future<Map<String, dynamic>> addTimeSlot({required TimeSlotRequest timeSlot});
  Future<Map<String, dynamic>> getTimeSlots();
  Future<Map<String, dynamic>> deleteTimeSlot({required String timeSlotId});
}
