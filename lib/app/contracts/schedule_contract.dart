import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/schedule_entity.dart';
import '../core/base_types/src/base_query.dart';

abstract class GetDoctorScheduleQuery
    extends BaseQuery<Future<Either<Failure, ScheduleEntity>>, String> {}

class ScheduleInputs extends Equatable {
  final String doctorId;
  final String timeSlotId;

  const ScheduleInputs({required this.doctorId, required this.timeSlotId});

  @override
  List<Object> get props => [doctorId, timeSlotId];
}
