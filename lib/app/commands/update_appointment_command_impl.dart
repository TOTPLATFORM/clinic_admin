import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import '../contracts/appointment.dart';
import '../core/primitives/inputs/add_appointment_input.dart';

class UpdateAppointmentCommandImpl extends UpdateAppointmentCommand {
  final AppointmentRepo repo;

  UpdateAppointmentCommandImpl({required this.repo});
  @override
  Future<Either<Failure, AppointmentEntity>> call(AddAppointmentInput params) {
    return repo.updateAppointment(
      scheduleId: params.scheduleId,
      doctorId: params.doctorId,
      patientId: params.patientId,
      appointmentId: params.appointmentId!,
    );
  }
}
