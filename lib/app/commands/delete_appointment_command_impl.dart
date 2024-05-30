import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/generic_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import '../contracts/appointment.dart';

class DeletAppointmentCommandImpl extends DeletAppointmentCommand {
  final AppointmentRepo repo;

  DeletAppointmentCommandImpl({required this.repo});

  @override
  Future<Either<Failure, GenericEntity>> call(String params) {
    return repo.deleteAppointment(appointmentId: params);
  }
}
