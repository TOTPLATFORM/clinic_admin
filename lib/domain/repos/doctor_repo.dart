import '../../core/network/failure.dart';
import '../entities/doctor_entity.dart';
import '../entities/doctors_entity.dart';
import 'package:dartz/dartz.dart';

abstract class DoctorRepo {
  Future<Either<Failure, DoctorsEntity>> getAllDoctors();
  Future<Either<Failure, DoctorEntity>> getDoctorById(
      {required String doctorId});
  Future<Either<Failure, DoctorEntity>> addDoctor(
      {required DoctorEntity doctorData});
}
