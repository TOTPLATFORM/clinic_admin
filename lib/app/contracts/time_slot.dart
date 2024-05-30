import '../core/base_types/src/base_query.dart';
import '../requests/time_slot_request.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/get_all_time_slots_entity.dart';
import '../../domain/entities/time_slot_entity.dart';
import 'package:dartz/dartz.dart';

import '../core/primitives/inputs/no_params.dart';

abstract class GetTimeSlotsQuery
    extends BaseQuery<Future<Either<Failure, GetTimeSlotsEntity>>, NoParams> {}
abstract class AddTimeSlotQuery
    extends BaseQuery<Future<Either<Failure, TimeSlotEntity>>, TimeSlotRequest> {}
abstract class DeleteTimeSlotCommand
    extends BaseQuery<Future<Either<Failure, TimeSlotEntity>>, String> {}
