import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/schedule_entity.dart';
import '../core/base_types/src/base_query.dart';
import '../core/primitives/inputs/schedule_inputs.dart';

abstract class GetDoctorScheduleQuery
    extends BaseQuery<Future<Either<Failure, List<ScheduleEntity>>>, String> {}

abstract class GetSchedulesByDayQuery extends BaseQuery<
    Future<Either<Failure, List<ScheduleEntity>>>, ScheduleInputs> {}
