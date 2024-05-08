import '../core/base_types/src/base_query.dart';
import '../core/primitives/inpust/add_appointment_input.dart';
import '../core/primitives/inpust/no_params.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/entities/generic_entity.dart';
import '../../domain/entities/get_appointment_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AddAppointmentCommand extends BaseQuery<
    Future<Either<Failure, AppointmentEntity>>, AddAppointmentInput> {}

abstract class GetAppointmentQuery extends BaseQuery<
    Future<Either<Failure, GetAppointmentsEntity>>, NoParams> {}

abstract class UpdateAppointmentCommand extends BaseQuery<
    Future<Either<Failure, AppointmentEntity>>, AddAppointmentInput> {}

abstract class DeletAppointmentCommand
    extends BaseQuery<Future<Either<Failure, GenericEntity>>, String> {}
