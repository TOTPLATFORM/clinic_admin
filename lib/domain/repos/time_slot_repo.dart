import 'package:dartz/dartz.dart';

import '../../app/requests/time_slot_request.dart';
import '../../core/network/failure.dart';
import '../entities/get_all_time_slots_entity.dart';
import '../entities/time_slot_entity.dart';

abstract class TimeSlotRepo {
  Future<Either<Failure, GetTimeSlotsEntity>> getTimeSlots();

  Future<Either<Failure, TimeSlotEntity>> addTimeSlot(
      {required TimeSlotRequest timeSlot});

  Future<Either<Failure, TimeSlotEntity>> deleteTimeSlot({
    required int id,
  });
}
