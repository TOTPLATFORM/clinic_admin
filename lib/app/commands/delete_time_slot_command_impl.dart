import 'package:clinic_admin/core/network/failure.dart';

import 'package:clinic_admin/domain/entities/time_slot_entity.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repos/time_slot_repo.dart';
import '../contracts/time_slot.dart';

class DeleteTimeSlotCommandImpl extends DeleteTimeSlotCommand {
  final TimeSlotRepo _timeSlotRepo;

  DeleteTimeSlotCommandImpl({required TimeSlotRepo timeSlotRepo}) : _timeSlotRepo = timeSlotRepo;
  @override
  Future<Either<Failure, TimeSlotEntity>> call(String params) {
    return _timeSlotRepo.deleteTimeSlot(id:int.parse(params) );
  }

}