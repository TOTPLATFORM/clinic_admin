import 'package:clinic_admin/app/core/primitives/inputs/no_params.dart';

import 'package:clinic_admin/core/network/failure.dart';

import 'package:clinic_admin/domain/entities/get_all_time_slots_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repos/time_slot_repo.dart';
import '../contracts/time_slot.dart';

class GetTimeSlotsQueryImpl implements GetTimeSlotsQuery {
  final TimeSlotRepo _timeSlotRepo;

  GetTimeSlotsQueryImpl({required TimeSlotRepo timeSlotRepo}) : _timeSlotRepo = timeSlotRepo;
  @override
  Future<Either<Failure, GetTimeSlotsEntity>> call(NoParams params) {
    return _timeSlotRepo.getTimeSlots();
  }
  
}