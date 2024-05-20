import 'package:clinic_admin/app/core/base_types/src/base_query.dart';
import 'package:clinic_admin/app/requests/time_slot_request.dart';
import 'package:clinic_admin/core/network/failure.dart';
import 'package:clinic_admin/domain/entities/get_all_time_slots_entity.dart';
import 'package:clinic_admin/domain/entities/time_slot_entity.dart';
import 'package:dartz/dartz.dart';

import '../core/primitives/inputs/no_params.dart';

abstract class GetTimeSlotsQuery
    extends BaseQuery<Future<Either<Failure, GetTimeSlotsEntity>>, NoParams> {}
abstract class AddTimeSlotQuery
    extends BaseQuery<Future<Either<Failure, TimeSlotEntity>>, TimeSlotRequest> {}
abstract class DeleteTimeSlotCommand
    extends BaseQuery<Future<Either<Failure, TimeSlotEntity>>, String> {}
