import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/schedule_entity.dart';

abstract class ScheduleRepo {
  Future<Either<Failure, List<ScheduleEntity>>> getSchedulesByDoctorId(
      {required String doctorId});
  Future<Either<Failure, List<ScheduleEntity>>> getSchedulesByDay({
    required String doctorId,
    required int dayOfWeek,
  });
}
