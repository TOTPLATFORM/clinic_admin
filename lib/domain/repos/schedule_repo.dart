import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/schedule_entity.dart';

abstract class ScheduleRepo {
  Future<Either<Failure, ScheduleEntity>> getSchedulesByDoctorId({
    required String doctorId,
  });
}
