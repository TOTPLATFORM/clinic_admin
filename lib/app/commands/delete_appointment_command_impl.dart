import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/repos/appointment_repo.dart';
import '../contracts/appointment.dart';

class DeleteAppointmentCommandImpl implements DeleteAppointmentCommand {
  final AppointmentRepo _appointmentRepo;

  DeleteAppointmentCommandImpl({required AppointmentRepo appointmentRepo})
      : _appointmentRepo = appointmentRepo;

  @override
  Future<Either<Failure, bool>> call(String id) {
    return _appointmentRepo.deleteAppointment(id: id);
  }
}
