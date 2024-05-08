import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../entities/appointment_entity.dart';
import '../entities/generic_entity.dart';
import '../entities/get_appointment_entity.dart';

abstract class AppointmentRepo {
  Future<Either<Failure, AppointmentEntity>> addAppointment({
    required String doctorId,
    required String patientId,
    required String date,
    required String startTime,
    required String endTime,
  });
  Future<Either<Failure, GetAppointmentsEntity>> getAppointment();
  Future<Either<Failure, GenericEntity>> deleteAppointment(
      {required String appointmentId});
  Future<Either<Failure, AppointmentEntity>> updateAppointment({
    required String doctorId,
    required String patientId,
    required String date,
    required String startTime,
    required String endTime,
    required String appointmentId,
  });
}
