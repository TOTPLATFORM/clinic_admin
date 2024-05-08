import '../contracts/appointment.dart';
import '../core/primitives/inpust/add_appointment_input.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import 'package:dartz/dartz.dart';

class UpdateAppointmentCommandImpl extends UpdateAppointmentCommand {
  final AppointmentRepo repo;

  UpdateAppointmentCommandImpl({required this.repo});
  @override
  Future<Either<Failure, AppointmentEntity>> call(AddAppointmentInput params) {
    return repo.updateAppointment(
      date: params.date,
      doctorId: params.doctorId,
      patientId: params.patientId,
      startTime: params.startTime,
      endTime: params.endTime,
      appointmentId: params.appointmentId!,
    );
  }
}
