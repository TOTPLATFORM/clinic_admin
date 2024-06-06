import '../../domain/repos/appointment_repo.dart';
import '../contracts/appointment.dart';
import '../core/primitives/inputs/no_params.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import 'package:dartz/dartz.dart';

class GetAppointmentQueryImpl implements GetAppointmentQuery {
  final AppointmentRepo _appointmentRepo;

  GetAppointmentQueryImpl({
    required AppointmentRepo appointmentRepo,
  }) : _appointmentRepo = appointmentRepo;
  @override
  Future<Either<Failure, List<AppointmentEntity>>> call(NoParams params) {
    return _appointmentRepo.getAppointmentForDoctor();
  }
}
