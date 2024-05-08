import '../contracts/appointment.dart';
import '../core/primitives/inpust/no_params.dart';
import '../../core/network/failure.dart';
import '../../domain/entities/get_appointment_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import 'package:dartz/dartz.dart';

class GetAppointmentsQueryImpl implements GetAppointmentQuery {
  final AppointmentRepo repo;

  GetAppointmentsQueryImpl({required this.repo});

  @override
  Future<Either<Failure, GetAppointmentsEntity>> call(NoParams params) {
    return repo.getAppointment();
  }
}
