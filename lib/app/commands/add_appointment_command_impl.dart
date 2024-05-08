import '../contracts/appointment.dart';
import '../core/primitives/inputs/add_appointment_input.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import 'package:dartz/dartz.dart';

class AppointmentCommandImpl extends AddAppointmentCommand {
  final AppointmentRepo repo;

  AppointmentCommandImpl({required this.repo});
  @override
  Future<Either<Failure, AppointmentEntity>> call(AddAppointmentInput params) {
    return repo.addAppointment(
        date: params.date,
        doctorId: params.doctorId,
        patientId: params.patientId,
        startTime: params.startTime,
        endTime: params.endTime);
  }
}
