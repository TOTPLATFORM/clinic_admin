import 'package:clinic_admin/core/network/failure.dart';
import 'package:clinic_admin/domain/entities/time_slot_entity.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repos/time_slot_repo.dart';
import '../contracts/time_slot.dart';
import '../requests/time_slot_request.dart';

class AddTimeSlotQueryImpl implements AddTimeSlotQuery {
  final TimeSlotRepo _timeSlotRepo;

  AddTimeSlotQueryImpl({required TimeSlotRepo timeSlotRepo})
      : _timeSlotRepo = timeSlotRepo;
  @override
  Future<Either<Failure, TimeSlotEntity>> call(TimeSlotRequest params) {
    return _timeSlotRepo.addTimeSlot(timeSlot: params);
  }
}