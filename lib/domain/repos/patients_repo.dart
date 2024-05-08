import 'package:clinic_admin/core/network/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/patient_entity.dart';

abstract class PatientsRepo {
  Future<Either<Failure, PatientEntity>> getPatients();
}
