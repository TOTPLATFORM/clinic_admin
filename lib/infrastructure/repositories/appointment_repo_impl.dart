import '../../core/network/failure.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/entities/generic_entity.dart';
import '../../domain/entities/get_appointment_entity.dart';
import '../../domain/repos/appointment_repo.dart';
import '../data_source/abstarctions/appointment_data_source.dart';
import 'package:dartz/dartz.dart';

class AppointmentRepoImpl implements AppointmentRepo {
  final AppointmentDataSource appointmentDataSource;

  AppointmentRepoImpl({required this.appointmentDataSource});
  @override
  Future<Either<Failure, AppointmentEntity>> addAppointment({
    required String doctorId,
    required String patientId,
    required String date,
    required String startTime,
    required String endTime,
  }) async {
    try {
      final response = await appointmentDataSource.addAppointment(
        doctorId: doctorId,
        patientId: patientId,
        date: date,
        startTime: startTime,
        endTime: endTime,
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
    required String patientId,
    required String date,
    required String startTime,
    required String endTime,
    required String appointmentId,
  }) async {
    try {
      final response = await appointmentDataSource.updateAppointment(
          doctorId: doctorId,
          patientId: patientId,
          date: date,
          startTime: startTime,
          endTime: endTime,
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
