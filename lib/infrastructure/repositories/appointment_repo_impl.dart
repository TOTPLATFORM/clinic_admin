import 'package:dartz/dartz.dart';

import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/entities/generic_entity.dart';
import '../../domain/entities/get_appointment_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import '../data_source/abstractions/appointment_data_source.dart';

class AppointmentRepoImpl implements AppointmentRepo {
  final AppointmentDataSource appointmentDataSource;

  AppointmentRepoImpl({required this.appointmentDataSource});
  @override
  Future<Either<Failure, AppointmentEntity>> addAppointment({
  required String doctorId,
    required String patientId,
    required int scheduleId,
  }) async {
    try {
      final response = await appointmentDataSource.addAppointment(
        doctorId: doctorId,
        patientId: patientId,
        scheduleId: scheduleId,
      );
      return Right(
        AppointmentEntity.fromJson(response),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, GetAppointmentsEntity>> getAppointment() async {
    try {
      final response = await appointmentDataSource.getAppointment();
      return Right(
        GetAppointmentsEntity.fromJson(response),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AppointmentEntity>> updateAppointment({
    required String doctorId,
    required int scheduleId,
    required String appointmentId,
        required String patientId,

  }) async {
    try {
      final response = await appointmentDataSource.updateAppointment(
          doctorId: doctorId,
          patientId: patientId,
          scheduleId: scheduleId,
          appointmentId: appointmentId);
      return Right(
        AppointmentEntity.fromJson(response),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, GenericEntity>> deleteAppointment(
      {required String appointmentId}) async {
    try {
      final response = await appointmentDataSource.deleteAppointment(
          appointmentId: appointmentId);
      return Right(
        GenericEntity.fromJson(response),
      );
    } catch (e) {
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
